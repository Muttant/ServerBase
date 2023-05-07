package com.example.server.api.dto.request;

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
public class CommentRequestDto extends BaseObjectDto {
    private String avtId;
    private String fullName;
    private float point;
    private short likes;
    private MovieRequestDto movie;
    private boolean dataTest;
    private LocalDateTime createAt;
    private UserDto user;
}
