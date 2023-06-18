package com.example.server.api.utils;

import com.example.server.api.dto.request.MovieRequestDto;
import com.example.server.api.dto.response.MovieResponseDto;
import com.example.server.api.exception.TKException;
import com.example.server.api.entity.Movie;
import org.apache.commons.lang3.StringUtils;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import static com.example.server.security.response.ResponseStatus.*;

public class MovieUtil {
    public static MovieResponseDto convertToDto(Movie entity) {
        MovieResponseDto dto = null;
        if (entity != null){
            dto = new MovieResponseDto();
            dto.setId(entity.getId());
            dto.setMaPhim(entity.getId());
            dto.setTenPhim(entity.getTenPhim());
            dto.setBiDanh(entity.getBiDanh());
            dto.setHinhAnh(entity.getHinhAnhUrl());
            dto.setTrailer(entity.getTrailerUrl());
            dto.setMoTa(entity.getMoTa());
            dto.setNgayKhoiChieu(entity.getNgayKhoiChieu().toString());
            dto.setTheLoai(entity.getTheLoai());
            dto.setDaoDien(entity.getDaoDien());
            dto.setDienVien(entity.getDienVien());
            dto.setRated(entity.getRated());
            dto.setDanhGia(entity.getDanhGia());
            dto.setThoiLuong(entity.getThoiLuongPhim());
            dto.setShow(entity.isShow());
        }
        return dto;
    }

    public static Movie setDataEntityFromDto(Movie entity, MovieRequestDto dto) throws TKException {
        if (StringUtils.isEmpty(dto.getTenPhim()))
            throw new TKException(MOVIE_NAME_IS_EMPTY);

        if (StringUtils.isEmpty(dto.getTrailer()))
            throw new TKException(TRAILER_URL_IS_EMPTY);

        if (StringUtils.isEmpty(dto.getHinhAnh()))
            throw new TKException(MOVIE_IMAGE_IS_EMPTY);

        if (StringUtils.isEmpty(dto.getMoTa()))
            throw new TKException((DESCRIPTION_IS_EMPTY));

        if (dto.getNgayKhoiChieu() == null)
            throw new TKException(RELEASE_DATE_IS_EMPTY);

        entity.setTenPhim(dto.getTenPhim());
        entity.setBiDanh(dto.getBiDanh());
        entity.setHinhAnhUrl(dto.getHinhAnh());
        entity.setTrailerUrl(dto.getTrailer());
        entity.setMoTa(dto.getMoTa());
        LocalDate date = LocalDate.parse(dto.getNgayKhoiChieu(), DateTimeFormatter.ofPattern("dd/MM/yyyy"));
        entity.setNgayKhoiChieu(date);
        entity.setTheLoai(dto.getTheLoai());
        entity.setDaoDien(dto.getDaoDien());
        entity.setDienVien(dto.getDienVien());
        entity.setRated(dto.getRated());
        entity.setDanhGia(dto.getDanhGia());
        entity.setShow(dto.isShow());
        entity.setThoiLuongPhim(dto.getThoiLuongPhim());

        return entity;
    }
}
