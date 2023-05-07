package com.example.server.api.service;

import com.example.server.api.dto.request.TheaterRequestDto;
import com.example.server.security.response.TKResponse;

import java.util.UUID;

public interface TheaterService {
    TKResponse<TheaterRequestDto> findById(UUID id);
    TKResponse<TheaterRequestDto> save(TheaterRequestDto dto);
    TKResponse<TheaterRequestDto> update(UUID id, TheaterRequestDto dto);
    TKResponse<Boolean> deleteById(UUID id);
}
