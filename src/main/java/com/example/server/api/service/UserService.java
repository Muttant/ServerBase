package com.example.server.api.service;

import com.example.server.api.dto.response.UserInfoResponseDto;
import com.example.server.security.response.TKResponse;

import java.util.List;

public interface UserService {
    TKResponse<UserInfoResponseDto> getUserInfo(UserInfoResponseDto dto);
    TKResponse<List<UserInfoResponseDto>> getAll();
    TKResponse<UserInfoResponseDto> update(UserInfoResponseDto dto);
    void deleteByUsername(String username);
}
