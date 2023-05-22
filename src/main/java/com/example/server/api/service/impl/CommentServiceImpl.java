package com.example.server.api.service.impl;

import com.example.server.api.dto.request.CommentRequestDto;
import com.example.server.api.dto.response.CommentResponseDto;
import com.example.server.api.entity.Comment;
import com.example.server.api.entity.Movie;
import com.example.server.api.repository.CommentRepository;
import com.example.server.api.repository.MovieRepository;
import com.example.server.api.service.CommentService;
import com.example.server.api.utils.CommentUtil;
import com.example.server.security.entity.User;
import com.example.server.security.repository.UserRepository;
import com.example.server.security.response.TKResponse;
import com.example.server.security.utils.SecurityUtils;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CommentServiceImpl implements CommentService {
    private final CommentRepository commentRepository;
    private final UserRepository userRepository;
    private final MovieRepository movieRepository;
    @Override
    public TKResponse<List<CommentResponseDto>> findAll() {
        List<Comment> comments = commentRepository.findAll();

        List<CommentResponseDto> result = comments.stream().map(e -> CommentUtil.convertToDto(e)).collect(Collectors.toList());

        return new TKResponse<>(result);
    }

    @Override
    public TKResponse<CommentResponseDto> save(CommentRequestDto dto) {
        Comment comment = new Comment();
        comment.setId(dto.getId());
        comment.setLikes(dto.getLikes());
        comment.setPost(dto.getPost());
        comment.setPoint(dto.getPoint());
        comment.setAvtId(dto.getAvtId());
        String username = SecurityUtils.getUsername();
        User user = userRepository.findByUsername(username);
        comment.setUser(user);
        comment.setFullName(user.getFullName());
        comment.setCreateAt(LocalDateTime.now());
        comment.setDataTest(dto.isDataTest());
        Movie movie = movieRepository.findById(Long.parseLong(dto.getMaPhim())).orElse(null);
        comment.setMovie(movie);

        comment = commentRepository.save(comment);



        return new TKResponse<>(CommentUtil.convertToDto(comment));
    }
}
