package com.example.server.api.service;

import com.example.server.api.dto.request.TheaterRequestDto;
import com.example.server.api.dto.response.TheaterResponseDto;
import com.example.server.security.response.TKResponse;

import java.util.List;

public interface TheaterService {
    TKResponse<List<TheaterResponseDto>> getAll();
    TKResponse<List<TheaterResponseDto>> getAll2();
    TKResponse<TheaterResponseDto> findById(Long id);
    TKResponse<TheaterRequestDto> save(TheaterRequestDto dto);
    TKResponse<TheaterRequestDto> update(Long id, TheaterRequestDto dto);
    TKResponse<Boolean> deleteById(Long id);
}
