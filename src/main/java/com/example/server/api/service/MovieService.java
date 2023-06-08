package com.example.server.api.service;

import com.example.server.api.dto.request.MovieRequestDto;
import com.example.server.api.dto.response.MovieResponseDto;
import com.example.server.security.response.TKResponse;

import java.util.List;

public interface MovieService {
    TKResponse<MovieResponseDto> findById(Long id);
    TKResponse<List<MovieResponseDto>> findAllAndFilter();
    TKResponse<List<MovieResponseDto>> findAllNotFilter();
    TKResponse<MovieResponseDto> save(MovieRequestDto dto);
    TKResponse<MovieResponseDto> update(MovieRequestDto dto);
    TKResponse<Boolean> deleteById(Long id);


}
