package com.example.server.security.service;

import com.example.server.security.dto.TokenDto;
import com.example.server.security.dto.UserDto;
import com.example.server.security.response.TKResponse;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface UserService {
    TKResponse<UserDto> save(UserDto dto);
    TKResponse<UserDto> getByUsername(String username);
    TKResponse<UserDto> getMe();
    TKResponse<Boolean> addUserImage(MultipartFile file);
    void getUserImage(String name, HttpServletResponse response);
    TKResponse<UserDto> update(UserDto dto);
    TKResponse<Boolean> delete(Long id);
    TKResponse<Boolean> forgotPassword(String username);
    String genCode();
    TKResponse<Boolean> changePassword(UserDto dto);
    TKResponse<Boolean> registerCode(String username);
    TKResponse<Boolean> updatePassword(UserDto dto);
    TKResponse<UserDto> register(UserDto dto);
    TKResponse<TokenDto> loginByTokenFirebase(String token);
    TKResponse<TokenDto> refreshToken(String token);
    TKResponse<Void> logout(HttpServletRequest request);
    TKResponse<Boolean> updateFullName(String fullName);
}
