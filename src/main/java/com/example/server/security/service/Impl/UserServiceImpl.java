package com.example.server.security.service.Impl;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.example.server.security.config.JwtTokenBlacklist;
import com.example.server.security.constant.Constants;
import com.example.server.security.dto.RoleDto;
import com.example.server.security.dto.TokenDto;
import com.example.server.security.dto.UserDto;
import com.example.server.security.entity.VerificationCode;
import com.example.server.security.entity.Role;
import com.example.server.security.entity.User;
import com.example.server.security.repository.VerificationCodeRepository;
import com.example.server.security.repository.RoleRepository;
import com.example.server.security.repository.UserRepository;
import com.example.server.security.response.TKResponse;
import com.example.server.security.response.ResponseStatus;
import com.example.server.security.service.UserService;
import com.example.server.security.utils.EmailUtils;
import com.example.server.security.utils.FileUtil;
import com.example.server.security.utils.SecurityUtils;
import com.example.server.security.validate.UserVal;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseAuthException;
import com.google.firebase.auth.FirebaseToken;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService, UserDetailsService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final VerificationCodeRepository verificationCodeRepository;
    private final EmailUtils emailUtils;
    private final JwtTokenBlacklist tokenBlacklist;
    private final UserVal userVal;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;
    private final Logger logger = LoggerFactory.getLogger(UserService.class);
    @Value("${mailServer.SendLimit}")
    private Integer sendLimit;
    @Value("${mailServer.subject}")
    private String subject;

    @Override
    public TKResponse<UserDto> save(UserDto dto) {
        dto.setUsername(dto.getEmail());
        ResponseStatus status = userVal.validate(null, dto);
        if (!status.equals(ResponseStatus.SUCCESS)) {
            return new TKResponse<>(status);
        }
        try {
            User user = new User();
            setDataEntity(user, dto, false);
            user = userRepository.save(user);
            return new TKResponse<>(new UserDto(user));
        } catch (Exception e) {
            logger.error("UserServiceImpl2 save fail : {}", e.getMessage());
            return new TKResponse<>(ResponseStatus.SERVER_ERROR_WHEN_SAVE);
        }
    }

    @Override
    public TKResponse<UserDto> getByUsername(String username) {
        if (StringUtils.isEmpty(username)) {
            return new TKResponse<>(ResponseStatus.USERNAME_IS_EMPTY);
        }
        User user = userRepository.findByUsername(username);

        if (null == user) {
            return new TKResponse<>(ResponseStatus.USER_NOT_FOUND);
        }

        return new TKResponse<>(new UserDto(user));
    }

    @Override
    public TKResponse<UserDto> getMe() {
        User user = userRepository.findByUsername(SecurityUtils.getUsername());

        if (null == user) {
            return new TKResponse<>(ResponseStatus.USER_NOT_FOUND);
        }

        return new TKResponse<>(new UserDto(user));
    }

    @Override
    public TKResponse<Boolean> addUserImage(MultipartFile file) {
        User user = userRepository.findByUsername(SecurityUtils.getUsername());

        if (user == null)
            return new TKResponse<>(false, ResponseStatus.USER_NOT_FOUND);

        String imageName = FileUtil.saveFile(file, Constants.PACKAGE_USER_IMAGE);

        if (imageName == null)
            return new TKResponse<>(false, ResponseStatus.SERVER_ERROR_WHEN_SAVE);

        user.setImagePath(imageName);
        userRepository.save(user);

        return new TKResponse<>(true);
    }

    @Override
    public void getUserImage(String name, HttpServletResponse response) {
        try {
            String filePath = new String(Constants.PACKAGE_USER_IMAGE + name);

            FileInputStream reader = new FileInputStream(filePath);

            int available = reader.available();
            byte[] data = new byte[available];
            reader.read(data, 0, available);
            ServletOutputStream out = response.getOutputStream();
            response.setContentType(MediaType.IMAGE_PNG_VALUE);
//            response.setHeader("Content-Disposition", "attachment; filename=" + fileDetail.getName()); // dùng để lưu

            out.write(data);
            response.flushBuffer();
        } catch (FileNotFoundException fileNotFoundException) {
            logger.error("supplierServiceImpl getLogo fail : {}", fileNotFoundException.getMessage());
        } catch (IOException ioException) {
            logger.error("supplierServiceImpl getLogo fail : {}", ioException.getMessage());
        }
    }

    /*
     * Người dùng: sửa username, password
     * Quản trị : password, role
     * */

    private void setDataEntity(User entity, UserDto dto, boolean isRegister) {
        entity.setUsername(dto.getUsername());
        entity.setFullName(dto.getFullName());
        entity.setPhone(dto.getPhone());
        entity.setEmail(dto.getEmail());
        entity.setActive(true);
        entity.setPassword(dto.getPassword());
        Role role = roleRepository.findById(2L).orElse(null);
        entity.getRoles().add(role);
//        if (!isRegister) {
//            Set<Role> rolesNew = new HashSet<>();
//            for (RoleDto element : dto.getRoles()) {
//                Role role = roleRepository.findByName(element.getName());
//                if (null != role)
//                    rolesNew.add(role);
//            }
//            if (null != rolesNew) {
//                entity.getRoles().clear();
//                entity.getRoles().addAll(rolesNew);
//            }
//        } else {
//            entity.getRoles().add(roleRepository.findByName("ROLE_USER"));
//        }
    }

    @Override
    public TKResponse<UserDto> update(UserDto dto) {
        return null;
    }

    /**
     * Chỉ xóa tài khoản khi tạo sai
     */
    @Override
    public TKResponse<Boolean> delete(Long id) {
        return null;
    }

    @Override
    public TKResponse<Boolean> forgotPassword(String username) {
        if (StringUtils.isEmpty(username)) {
            return new TKResponse<>(false, ResponseStatus.USERNAME_IS_EMPTY);
        }
        User user = userRepository.findByUsername(username);
        if (user == null) {
            return new TKResponse<>(false, ResponseStatus.USERNAME_IS_NOT_EXIST);
        }

        Integer sendNum = verificationCodeRepository.countNumberByUsernameAndType(username, Constants.VerificationType.FORGOT_PASSWORD.getValue());
        if (sendNum >= sendLimit) {
            return new TKResponse<>(false, ResponseStatus.SENT_EMAIL_TO_YOU);
        }

        VerificationCode forgotPassword = new VerificationCode();
        forgotPassword.setUserId(user.getId());
        forgotPassword.setUsername(user.getUsername());
        forgotPassword.setEmail(user.getEmail());
        String codeSMS = this.genCode();
        forgotPassword.setCodeSMS(codeSMS);
        forgotPassword.setExpired(LocalDateTime.now().plusMinutes(5));
        forgotPassword.setType(Constants.VerificationType.FORGOT_PASSWORD.getValue());

        verificationCodeRepository.save(forgotPassword);

        String body = new StringBuilder("code: ").append(codeSMS).toString();
        emailUtils.send(user.getEmail(), subject, body);

        return new TKResponse<>(true);
    }

    /*
     * todo: tạo tác vụ tự động xóa dữ liệu bảng tbl_forgot_password:
     *  chỉ xóa các row có expired đã hết hạn, khoảng 1 ngày xóa 1 lần
     * */

    @Override
    public String genCode() {
        Random random = new Random();
        int code = random.nextInt(999999);
        return String.format("%06d", code < 100011 ? code + 100000 : code);
    }

    @Override
    @Transactional
    public TKResponse<Boolean> changePassword(UserDto dto) {
        String userName = dto.getUsername();
        if (!StringUtils.hasText(userName)) {
            return new TKResponse<>(false, ResponseStatus.USERNAME_IS_EMPTY);
        }

        String codeSMS = dto.getCodeSMS();
        if (!StringUtils.hasText(codeSMS)) {
            return new TKResponse<>(false, ResponseStatus.CODE_SMS_IS_EMPTY);
        }
        VerificationCode forgotPassword = verificationCodeRepository.getVerificationCodeByUsernameAndCodeSMS(userName, codeSMS);
        if (null == forgotPassword) {
            return new TKResponse<>(false, ResponseStatus.CODE_SMS_IS_NOT_EXIST);
        }

        LocalDateTime now = LocalDateTime.now();
        LocalDateTime expired = forgotPassword.getExpired();
        if (expired.isBefore(now)) {
            return new TKResponse<>(false, ResponseStatus.CODE_SMS_INVALID);
        }

        User user = userRepository.findById(forgotPassword.getUserId()).orElse(null);
        if (null == user) {
            return new TKResponse<>(false, ResponseStatus.USER_NOT_FOUND);
        }

        String newPassword = dto.getPassword();
        if (!StringUtils.hasText(newPassword)) {
            return new TKResponse<>(false, ResponseStatus.PASSWORD_IS_EMPTY);
        }

//        if (!dto.getPassword().matches(Constants.REGEX_PASSWORD)){
//            return new BHNTResponse<>(false, ResponseStatus.PASSWORD_IS_WRONG_FORMAT);
//        }

        String confirmNewPassword = dto.getConfirmPassword();
        if (!newPassword.equals(confirmNewPassword)) {
            return new TKResponse<>(false, ResponseStatus.CONFIRM_PASSWORD_IS_ERROR);
        }

        user.setPassword(bCryptPasswordEncoder.encode(newPassword));
        userRepository.save(user);
        verificationCodeRepository.removeByUsername(userName);

        return new TKResponse<>(true);
    }

    @Override
    public TKResponse<Boolean> registerCode(String username) {
        if (!username.matches(Constants.REGEX_EMAIL)) {
            return new TKResponse<>(false, ResponseStatus.EMAIL_IS_WRONG_FORMAT);
        }
        if (userRepository.existsByEmail(username)) {
            return new TKResponse<>(false, ResponseStatus.EMAIL_IS_EXIST);
        }

        Integer sendNum = verificationCodeRepository.countNumberByUsernameAndType(username, Constants.VerificationType.REGISTER.getValue());
        if (sendNum >= sendLimit) {
            return new TKResponse<>(false, ResponseStatus.SENT_EMAIL_TO_YOU);
        }

        VerificationCode forgotPassword = new VerificationCode();
        forgotPassword.setUsername(username);
        forgotPassword.setEmail(username);
        String codeSMS = this.genCode();
        forgotPassword.setCodeSMS(codeSMS);
        forgotPassword.setExpired(LocalDateTime.now().plusMinutes(5));
        forgotPassword.setType(Constants.VerificationType.REGISTER.getValue());

        verificationCodeRepository.save(forgotPassword);

        String body = "code: " + codeSMS;
        emailUtils.send(username, subject, body);

        return new TKResponse<>(true);
    }

    @Override
    public TKResponse<Boolean> updatePassword(UserDto dto) {
        String username = SecurityUtils.getUsername();
        User user = userRepository.findByUsername(username);

        if (user == null)
            return new TKResponse<>(false, ResponseStatus.USER_NOT_FOUND);

        String oldPassword = dto.getOldPassword();
        String newPassword = dto.getPassword();
        String confirmNewPassword = dto.getConfirmPassword();

        if (StringUtils.isEmpty(oldPassword)
                || StringUtils.isEmpty(newPassword)
                || StringUtils.isEmpty(confirmNewPassword)) {
            return new TKResponse<>(false, ResponseStatus.DATA_IS_EMPTY);
        }

        if (!newPassword.equals(confirmNewPassword)) {
            return new TKResponse<>(false, ResponseStatus.CONFIRM_PASSWORD_IS_ERROR);
        }

        if (!BCrypt.checkpw(oldPassword, user.getPassword())) {
            return new TKResponse<>(false, ResponseStatus.PASSWORD_IS_ERROR);
        }

        user.setPassword(bCryptPasswordEncoder.encode(newPassword));
        userRepository.save(user);

        return new TKResponse<>(true);
    }

    @Override
    public TKResponse<UserDto> register(UserDto dto) {
//        String codeSMS = dto.getCodeSMS();
//        if (!StringUtils.hasText(codeSMS)) {
//            return new TKResponse<>(ResponseStatus.CODE_SMS_IS_EMPTY);
//        }

        ResponseStatus status = userVal.validate(null, dto);
        if (!status.equals(ResponseStatus.SUCCESS)) {
            return new TKResponse<>(status);
        }

//        VerificationCode verificationCode = verificationCodeRepository.getVerificationCodeByUsernameAndCodeSMS(dto.getUsername(), codeSMS);
//        if (null == verificationCode) {
//            return new TKResponse<>(ResponseStatus.CODE_SMS_IS_NOT_EXIST);
//        }

//        LocalDateTime now = LocalDateTime.now();
//        LocalDateTime expired = verificationCode.getExpired();
//        if (expired.isBefore(now)) {
//            return new TKResponse<>(ResponseStatus.CODE_SMS_INVALID);
//        }

        try {
            User user = new User();
            setDataEntity(user, dto, true);
            user = userRepository.save(user);

            return new TKResponse<>(new UserDto(user));
        } catch (Exception e) {
            logger.error("UserServiceImpl2 save fail : {}", e.getMessage());
            return new TKResponse<>(ResponseStatus.SERVER_ERROR_WHEN_SAVE);
        }
    }

    @Override
    public TKResponse<TokenDto> loginByTokenFirebase(String token) {
        try {
            FirebaseToken firebaseToken = FirebaseAuth.getInstance().verifyIdToken(token);
            String uId = firebaseToken.getUid();
            String email = firebaseToken.getEmail();

//            UserRecord userRecord = FirebaseAuth.getInstance().getUser(uId);

            User user;
            if (!userRepository.existsByUsername(email)) {
                user = new User();
                user.setFirebaseUID(uId);
                user.setLoginType(Constants.LoginType.FIREBASE.getValue());
                user.getRoles().add(roleRepository.findByName("ROLE_USER"));
                user.setUsername(email);
                user.setEmail(email);
                user.setActive(true);
                user.setPassword("");

                user = userRepository.save(user);
            } else {
                user = userRepository.findByUsername(email);
            }

            Algorithm algorithm = Algorithm.HMAC256(Constants.SECRET_KEY.getBytes());
            String access_token = JWT.create()
                    .withSubject(email)
                    .withExpiresAt(new Date(System.currentTimeMillis() + Constants.ACCESS_TOKEN_TIME))
                    .withClaim("roles", user.getAuthorities().stream().map(GrantedAuthority::getAuthority).collect(Collectors.toList()))
                    .sign(algorithm);

            TokenDto tokenDto = new TokenDto(access_token, token);

            return new TKResponse<>(tokenDto);
        } catch (FirebaseAuthException e) {
            logger.error("UserServiceImpl2 register by firebase login fail : {}", e.getMessage());
            return new TKResponse<>(ResponseStatus.REGISTER_ACCOUNT_BY_TOKEN_FIREBASE);
        }
    }


    @Override
    public TKResponse<TokenDto> refreshToken(String token) {
        User user;
        Algorithm algorithm = Algorithm.HMAC256(Constants.SECRET_KEY.getBytes());
        JWTVerifier verifier = JWT.require(algorithm).build();
        try {
            DecodedJWT decodedJWT = verifier.verify(token);
            String username = decodedJWT.getSubject();
            user = userRepository.findByUsername(username);
        } catch (Exception e) {
            logger.error("UserServiceImpl2 refresh token fail : {}", e.getMessage());
            return new TKResponse<>(ResponseStatus.REFRESH_TOKEN_NOT_ACCESS);
        }

        if (null == user)
            return new TKResponse<>(ResponseStatus.USER_NOT_FOUND);

        String access_token = JWT.create()
                .withSubject(user.getUsername())
                .withExpiresAt(new Date(System.currentTimeMillis() + Constants.ACCESS_TOKEN_TIME))
                .withClaim("roles", user.getAuthorities().stream().map(GrantedAuthority::getAuthority).collect(Collectors.toList()))
                .sign(algorithm);

        TokenDto tokenDto = new TokenDto(access_token, token);
        return new TKResponse<>(tokenDto);
    }

    @Override
    public TKResponse<Void> logout(HttpServletRequest request) {
        String header = request.getHeader("Authorization");
        if (!StringUtils.hasText(header) || !header.startsWith("Bearer "))
            return new TKResponse<>(ResponseStatus.IS_NOT_TOKEN);

        String token = header.substring(7);

        if (tokenBlacklist.isTokenExpired(token)){
            return new TKResponse<>(ResponseStatus.TOKEN_IS_EXPIRED);
        }

        tokenBlacklist.add(token);
        return new TKResponse<>(ResponseStatus.SUCCESS);
    }

    @Override
    public TKResponse<Boolean> updateFullName(String fullName) {
        User user = userRepository.findByUsername(SecurityUtils.getUsername());

        if (user == null)
            return new TKResponse<>(false, ResponseStatus.USER_NOT_FOUND);

        if (StringUtils.isEmpty(fullName))
            return new TKResponse<>(false, ResponseStatus.DATA_IS_EMPTY);

        user.setFullName(fullName);
        userRepository.save(user);

        return new TKResponse<>(true);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("User not found in database");
        }

        return user;
    }
}
