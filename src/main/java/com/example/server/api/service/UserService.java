package com.example.server.api.service;

import com.example.server.api.dto.response.UserInfoResponseDto;
import com.example.server.security.response.TKResponse;

public interface UserService {
    TKResponse<UserInfoResponseDto> getUserInfo(UserInfoResponseDto dto);
}
