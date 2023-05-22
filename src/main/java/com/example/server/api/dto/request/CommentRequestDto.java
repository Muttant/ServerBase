package com.example.server.api.dto.request;

import com.example.server.security.dto.BaseObjectDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CommentRequestDto extends BaseObjectDto {
    private String avtId;
    private String username;
    private float point;
    private short likes;
    private String post;
    private String maPhim;
    private boolean dataTest;
    private String createAt;
    private List<String> userLikeThisComment;
}
