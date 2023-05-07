package com.example.server.api.dto.response;

import com.example.server.security.dto.BaseObjectDto;
import com.example.server.security.dto.UserDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CommentResponseDto extends BaseObjectDto {
    private String avtId;
    private String fullName;
    private float point;
    private short likes;
    private MovieResponseDto movie;
    private boolean dataTest;
    private LocalDateTime createAt;
    private UserDto user;
}
