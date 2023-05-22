package com.example.server.api.rest;

import com.example.server.api.dto.request.CommentRequestDto;
import com.example.server.api.dto.response.CommentResponseDto;
import com.example.server.api.service.CommentService;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class CommentController {
    private final CommentService commentService;

    @GetMapping("/commentMovie")
    public TKResponse<List<CommentResponseDto>> findAll(){
        return commentService.findAll();
    }

    @PostMapping("/commentMovie")
    public TKResponse<CommentResponseDto> save(@RequestBody CommentRequestDto dto){
        return commentService.save(dto);
    }
}
