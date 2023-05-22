package com.example.server.api.service;

import com.example.server.api.dto.request.CommentRequestDto;
import com.example.server.api.dto.response.CommentResponseDto;
import com.example.server.security.response.TKResponse;

import java.util.List;

public interface CommentService {
    TKResponse<List<CommentResponseDto>> findAll();
    TKResponse<CommentResponseDto> save(CommentRequestDto dto);
}
