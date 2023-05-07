package com.example.server.api.service;

import com.example.server.api.dto.request.SeatRequestDto;
import com.example.server.security.response.TKResponse;

public interface SeatService {
    TKResponse<SeatRequestDto> findById(long id);
    TKResponse<SeatRequestDto> save(SeatRequestDto dto);
    TKResponse<SeatRequestDto> update(long id, SeatRequestDto dto);
    TKResponse<Boolean> deleteById(long id);
}
