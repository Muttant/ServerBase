package com.example.server.api.service;

import com.example.server.api.dto.request.RoomRequestDto;
import com.example.server.security.response.TKResponse;

public interface RoomService {
    TKResponse<RoomRequestDto> findById(Long id);
    TKResponse<RoomRequestDto> save(RoomRequestDto dto);
    TKResponse<RoomRequestDto> update(Long id, RoomRequestDto dto);
    TKResponse<Boolean> deleteById(Long id);
}
