package com.example.server.api.service;

import com.example.server.api.dto.request.BannerRequestDto;
import com.example.server.api.dto.response.BannerResponseDto;
import com.example.server.security.response.TKResponse;

import java.util.UUID;

public interface BannerService {
    TKResponse<BannerResponseDto> findById(UUID id);
    TKResponse<BannerResponseDto> save(BannerRequestDto dto);
    TKResponse<BannerResponseDto> update(UUID id, BannerRequestDto dto);
    TKResponse<Boolean> deleteById(UUID id);
}
