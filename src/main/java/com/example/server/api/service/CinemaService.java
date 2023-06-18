package com.example.server.api.service;

import com.example.server.api.dto.request.CinemaRequestDto;
import com.example.server.api.dto.response.CinemaResponseDto;
import com.example.server.security.response.TKResponse;

import java.util.List;

public interface CinemaService {
    TKResponse<CinemaRequestDto> findById(Long id);
    TKResponse<List<CinemaResponseDto>> findByTheaterId(Long id);
    TKResponse<CinemaRequestDto> save(CinemaRequestDto dto);
    TKResponse<CinemaRequestDto> update(Long id, CinemaRequestDto dto);
    TKResponse<Boolean> deleteById(Long id);
}
