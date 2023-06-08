package com.example.server.api.service.impl;

import com.example.server.api.dto.request.MovieRequestDto;
import com.example.server.api.dto.response.MovieResponseDto;
import com.example.server.api.repository.ScheduleRepository;
import com.example.server.api.utils.MovieUtil;
import com.example.server.api.exception.TKException;
import com.example.server.api.entity.Movie;
import com.example.server.api.repository.MovieRepository;
import com.example.server.api.service.MovieService;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

import static com.example.server.security.response.ResponseStatus.*;

@Service
@RequiredArgsConstructor
public class MovieServiceImpl implements MovieService {
    private final MovieRepository movieRepository;
    private final ScheduleRepository scheduleRepository;

    @Override
    public TKResponse<MovieResponseDto> findById(Long id) {
        Movie entity = movieRepository.findById(id).orElse(null);
        if (entity == null)
            return new TKResponse<>(ID_NOT_EXIST);

        return new TKResponse<>(MovieUtil.convertToDto(entity));
    }

    @Override
    public TKResponse<List<MovieResponseDto>> findAllAndFilter() {
        List<Movie> movies = movieRepository.findAll();
        List<MovieResponseDto> movieDtos = new ArrayList<>();
        movies.forEach(e -> {
            MovieResponseDto movieDto = MovieUtil.convertToDto(e);
            movieDto.setScheduled(scheduleRepository.hasScheduled(e.getId()));
            movieDtos.add(movieDto);
        });

        return new TKResponse<>(movieDtos);
    }

    @Override
    public TKResponse<List<MovieResponseDto>> findAllNotFilter() {
        List<Movie> movies = movieRepository.findAll();
        List<MovieResponseDto> movieDtos = movies.stream().filter(Movie::isShow).map(MovieUtil::convertToDto).collect(Collectors.toList());
        return new TKResponse<>(movieDtos);
    }

    @Override
    public TKResponse<MovieResponseDto> save(MovieRequestDto dto) {
        try {
            Movie entity = new Movie();
            MovieUtil.setDataEntityFromDto(entity, dto);
            entity = movieRepository.save(entity);
            return new TKResponse<>(MovieUtil.convertToDto(entity));
        } catch (TKException e) {
            return new TKResponse<>(e);
        }
    }

    @Override
    public TKResponse<MovieResponseDto> update(MovieRequestDto dto) {
        Movie entity = movieRepository.findById(dto.getMaPhim()).orElse(null);
        if (entity == null)
            return new TKResponse<>(ID_NOT_EXIST);

        try {
            MovieUtil.setDataEntityFromDto(entity, dto);
            entity = movieRepository.save(entity);
            return new TKResponse<>(MovieUtil.convertToDto(entity));
        } catch (TKException e) {
            return new TKResponse<>(e);
        }
    }

    @Override
    public TKResponse<Boolean> deleteById(Long id) {
        if (!movieRepository.existsById(id))
            return new TKResponse<>(ID_NOT_EXIST);
        try {
            movieRepository.deleteById(id);
            return new TKResponse<>();
        } catch (DataAccessException e) {
            return new TKResponse<>(SERVER_ERROR_WHEN_DELETE);
        }
    }
}
