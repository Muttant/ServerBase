package com.example.server.api.utils;

import com.example.server.api.dto.response.*;
import com.example.server.api.entity.*;
import com.example.server.api.repository.CinemaRepository;
import com.example.server.api.repository.MovieRepository;
import com.example.server.api.repository.ScheduleRepository;
import lombok.RequiredArgsConstructor;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Component
@RequiredArgsConstructor
public class TheaterUtil2 {

    private final MovieRepository movieRepository;
    private final ScheduleRepository scheduleRepository;

    public List<TheaterResponseDto> toTheaterDtos(List<Theater> entities) {
        List<TheaterResponseDto> dtos = new ArrayList<>();

        entities.forEach(e -> {
            TheaterResponseDto dto = new TheaterResponseDto();
            dto.setMaHeThongRap(e.getId());
            dto.setTenHeThongRap(e.getTenHeThongRap());
            dto.setLogo(e.getLogoUrl());
            dto.setLstCumRap(toCinemaDtos(e.getCinemas()));
            dtos.add(dto);
        });

        return dtos;
    }

    private List<CinemaResponseDto> toCinemaDtos(List<Cinema> entities){
        List<CinemaResponseDto> dtos = new ArrayList<>();

        entities.forEach(e -> {
            CinemaResponseDto dto = new CinemaResponseDto();
            dto.setMaCumRap(e.getId());
            dto.setTenCumRap(e.getTenCumRap());
            dto.setHinhAnh(e.getHinhAnhUrl());
            dto.setDiachi(e.getDiaChi());
            Set<Movie> movies = movieRepository.getByCinemaId(e.getId());
            dto.setDanhSachPhim(toMovieDtos(movies));
            dtos.add(dto);
        });

        return dtos;
    }

    private List<MovieResponseDto> toMovieDtos(Set<Movie> entities){
        List<MovieResponseDto> dtos = new ArrayList<>();

        entities.forEach(e -> {
            MovieResponseDto dto = new MovieResponseDto();
            dto.setHinhAnh(e.getHinhAnhUrl());
            dto.setMaPhim(e.getId());
            dto.setTenPhim(e.getTenPhim());
            List<Schedule> schedules = scheduleRepository.getByMovieId(e.getId());
            dto.setLstLichChieuTheoPhim(toScheduleDtos(schedules));
            dtos.add(dto);
        });

        return dtos;
    }

    private List<ScheduleMovieResponseDto> toScheduleDtos(List<Schedule> entities){
        List<ScheduleMovieResponseDto> dtos = new ArrayList<>();

        entities.forEach(e -> {
            ScheduleMovieResponseDto dto = new ScheduleMovieResponseDto();
            dto.setGiaVe(e.getGiaVe());
            Room room = e.getRoom();
            dto.setMaRap(room.getId());
            dto.setTenRap(room.getTenRap());
            dto.setNgayChieuGioChieu(e.getNgayGioiChieu().toString());
            dto.setMaLichChieu(e.getId());
            dtos.add(dto);
        });

        return dtos;
    }
}
