package com.example.server.api.service;

import com.example.server.api.dto.response.TheaterTestResponseDto;
import com.example.server.security.response.TKResponse;

import java.util.List;

public interface TheaterTestService {
    TKResponse<List<TheaterTestResponseDto>> getAll();
}
