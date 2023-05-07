package com.example.server.security.rest;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.example.server.security.constant.Constants;
import com.example.server.security.dto.TokenDto;
import com.example.server.security.dto.UserDto;
import com.example.server.security.entity.User;
import com.example.server.security.repository.UserRepository;
import com.example.server.security.response.TKResponse;
import com.example.server.security.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.stream.Collectors;


@CrossOrigin(origins = "http://localhost:3000/")
@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class PublicController {
    private final UserService userService;
    private final UserRepository userRepository;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;
    @GetMapping("/forgot-password/{username}")
    public TKResponse<Boolean> forgotPassword(@PathVariable("username") String username){
        return userService.forgotPassword(username);
    }

    @PostMapping("/change-password")
    public TKResponse<Boolean> changePassword(@RequestBody UserDto dto){
        return userService.changePassword(dto);
    }

    @PostMapping("/refresh-token")
    public TKResponse<TokenDto> refreshToken(@RequestParam("token") String token){
        return userService.refreshToken(token);
    }

    @GetMapping("/register-code/{username}")
    public TKResponse<Boolean> registerCode(@PathVariable("username") String username){
        return userService.registerCode(username);
    }
    
    @PostMapping("/login-by-firebase")
    public TKResponse<TokenDto> registerByFirebase(@RequestParam("token") String token){
        return userService.loginByTokenFirebase(token);
    }

    @GetMapping("/user/image/{name}")
    public void exportImage(@PathVariable("name") String name, HttpServletResponse response){
        userService.getUserImage(name, response);
    }

    @PostMapping("/user/add-image")
    public TKResponse<Boolean> addLogo(@RequestParam("image") MultipartFile file) {
        return userService.addUserImage(file);
    }

    @PutMapping("/update-password")
    public TKResponse<Boolean> updatePassword(@RequestBody UserDto userDto){
        return userService.updatePassword(userDto);
    }

    @PostMapping("/user/logout")
    public TKResponse<Void> logout(HttpServletRequest request){
        return userService.logout(request);
    }

    @PostMapping("/QuanLyNguoiDung/DangKy")
    public TKResponse<UserDto> register(@RequestBody UserDto userDto){
        return userService.register(userDto);
    }


    @PostMapping("/QuanLyNguoiDung/DangNhap")
    public TokenDto login(@RequestBody UserDto dto){


        User user = userRepository.findByUsername(dto.getUsername());
        if (!user.getPassword().equals(dto.getPassword()))
            return null;

        Algorithm algorithm = Algorithm.HMAC256(Constants.SECRET_KEY.getBytes());

        String access_token = JWT.create()
                .withSubject(user.getUsername())
                .withClaim("id",user.getId())
                .withClaim("roles", user.getAuthorities().stream().map(GrantedAuthority::getAuthority).collect(Collectors.toList()))
                .sign(algorithm);

        String refresh_token = JWT.create()
                .withSubject(user.getUsername())
                .sign(algorithm);

        TokenDto tokenDto = new TokenDto(access_token, refresh_token);
        tokenDto.setEmail(user.getEmail());
        tokenDto.setHoTen(user.getFullName());
        tokenDto.setEmail(user.getEmail());
        tokenDto.setMaLoaiNguoiDung(user.getRoles().get(0).getName());
        tokenDto.setMaNhom("GP09");
        tokenDto.setSoDT("0123456789");
        tokenDto.setTaiKhoan(user.getUsername());
        return tokenDto;

    }

//    @PostMapping("/QuanLyNguoiDung/ThongTinTaiKhoan")
//    public UserDto getUserInfo(@RequestBody UserDto dto){
//        return null;
//    }
}
