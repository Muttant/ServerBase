package com.example.server.security.validate;

import com.example.server.security.constant.Constants;
import com.example.server.security.dto.UserDto;
import com.example.server.security.repository.RoleRepository;
import com.example.server.security.repository.UserRepository;
import com.example.server.security.response.ResponseStatus;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.util.ObjectUtils;
import org.springframework.util.StringUtils;

@Component
@RequiredArgsConstructor
public class UserVal {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public ResponseStatus validate(Long id, UserDto dto){
        if (null != id && !userRepository.existsById(id)){
            return ResponseStatus.ID_NOT_EXIST;
        }
        if (ObjectUtils.isEmpty(dto)){
            return ResponseStatus.OBJECT_IS_EMPTY;
        }
        if (StringUtils.isEmpty(dto.getUsername())){
            return ResponseStatus.USERNAME_IS_EMPTY;
        }
        if (userRepository.existsByUsername(dto.getUsername())){
            return ResponseStatus.USERNAME_IS_EXIST;
        }
        if (StringUtils.isEmpty(dto.getEmail())){
            return ResponseStatus.EMAIL_IS_EMPTY;
        }
        if (!dto.getEmail().matches(Constants.REGEX_EMAIL)){
            return ResponseStatus.EMAIL_IS_WRONG_FORMAT;
        }
        if (userRepository.existsByEmail(dto.getEmail())){
            return ResponseStatus.EMAIL_IS_EXIST;
        }
        if (StringUtils.isEmpty(dto.getPassword())){
            return ResponseStatus.PASSWORD_IS_EMPTY;
        }
//        if (!dto.getPassword().matches(Constants.REGEX_PASSWORD)){
//            return ResponseStatus.PASSWORD_IS_WRONG_FORMAT;
//        }
//        if (CollectionUtils.isEmpty(dto.getRoles())){
//            return ResponseStatus.ROLE_IS_EMPTY;
//        }
        /*
        * todo: có khả năng lợi dụng điều này để tìm ra các quyền có trong chương trình
        *  và lợi dụng nó mà tạo ra tài khoản có quyền cao và chiếm quyền điều kiến;
        *  Có thể thử giải quyết bằng cách khóa tài khoản người tạo này;
        *  Nếu là người thường tự tạo tài khoản thì mặc định cho là role_user
         * */
//        if (!CollectionUtils.isEmpty(dto.getRoles())) {
//            for (RoleDto role : dto.getRoles()) {
//                if (!roleRepository.hasName((long) -1, role.getName())) {
//                    return ResponseStatus.ROLE_NOT_EXIST;
//                }
//            }
//        }
        return ResponseStatus.SUCCESS;
    }
}
