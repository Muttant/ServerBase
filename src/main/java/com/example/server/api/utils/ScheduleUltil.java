package com.example.server.api.utils;

import com.example.server.api.dto.request.CinemaRequestDto;
import com.example.server.api.dto.request.ScheduleRequestDto;
import com.example.server.api.dto.response.CinemaResponseDto;
import com.example.server.api.dto.response.ScheduleInfoResponseDto;
import com.example.server.api.dto.response.ScheduleMovieResponseDto;
import com.example.server.api.dto.response.TheaterResponseDto;
import com.example.server.api.entity.*;
import com.example.server.api.exception.TKException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
@RequiredArgsConstructor
@Slf4j
public class ScheduleUltil {

    public ScheduleInfoResponseDto convertToScheduleInfoDto(Movie entity){
        ScheduleInfoResponseDto dto = null;
        if (entity != null){
            dto = new ScheduleInfoResponseDto();
            dto.setMaPhim(entity.getId());
            dto.setTenPhim(entity.getTenPhim());
            dto.setBiDanh(entity.getBiDanh());
            dto.setTrailer(entity.getTrailerUrl());
            dto.setHinhAnh(entity.getHinhAnhUrl());
            dto.setMoTa(entity.getMoTa());
            dto.setNgayKhoiChieu(entity.getNgayKhoiChieu());
            dto.setDanhGia(entity.getDanhGia());
        }
        return dto;
    }

    public TheaterResponseDto convertToTheaterResponseDto(Theater entity){
        TheaterResponseDto dto =  null;
        if (entity != null){
            dto = new TheaterResponseDto();
            dto.setLogo(entity.getLogoUrl());
            dto.setMaHeThongRap(entity.getId());
            dto.setTenHeThongRap(entity.getTenHeThongRap());
        }
        return dto;
    }

    public CinemaResponseDto convertToCinemaResponseDto(Cinema entity){
        CinemaResponseDto dto = null;
        if (entity != null) {
            dto = new CinemaResponseDto();
            dto.setMaCumRap(entity.getId());
            dto.setTenCumRap(entity.getTenCumRap());
            dto.setHinhAnh(entity.getHinhAnhUrl());
        }
        return dto;
    }

    public ScheduleMovieResponseDto convertToScheduleMovieDto(Schedule entity){
        ScheduleMovieResponseDto dto = null;
        if (entity != null) {
            dto = new ScheduleMovieResponseDto();
            dto.setMaLichChieu(entity.getId());
            Room room = entity.getRoom();
            dto.setMaRap(room.getId());
            dto.setTenRap(room.getTenRap());
            dto.setGiaVe(entity.getGiaVe());
            dto.setThoiLuong(entity.getMovie().getThoiLuongPhim());
            dto.setNgayChieuGioChieu(entity.getNgayGioiChieu().toString());
        }
        return dto;
    }

    public Schedule setDataEntityFromDto(Schedule entity, ScheduleRequestDto dto) throws TKException {

        return entity;
    }
}
