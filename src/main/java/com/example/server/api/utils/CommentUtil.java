package com.example.server.api.utils;

import com.example.server.api.dto.response.CommentResponseDto;
import com.example.server.api.entity.Comment;

import java.util.ArrayList;
import java.util.List;

public class CommentUtil {
    public static CommentResponseDto convertToDto (Comment entity){
        CommentResponseDto dto = new CommentResponseDto();
        dto.setId(entity.getId());
        dto.setLikes(entity.getLikes());
        dto.setPost(entity.getPost());
        dto.setPoint(entity.getPoint());
        dto.setAvtId(entity.getAvtId());
        dto.setUsername(entity.getFullName());
        dto.setCreateAt(entity.getCreateAt().toString());
        dto.setDataTest(entity.isDataTest());
        dto.setMaPhim(String.valueOf(entity.getMovie().getId()));
        List<String> list = new ArrayList<>();
        list.add("mot");
        list.add("hai");
        dto.setUserLikeThisComment(list);

        return dto;
    }
}
