package com.example.server.api.service;

import com.example.server.api.dto.request.CinemaRequestDto;
import com.example.server.security.response.TKResponse;

public interface CinemaService {
    TKResponse<CinemaRequestDto> findById(Long id);
    TKResponse<CinemaRequestDto> save(CinemaRequestDto dto);
    TKResponse<CinemaRequestDto> update(Long id, CinemaRequestDto dto);
    TKResponse<Boolean> deleteById(Long id);
}
