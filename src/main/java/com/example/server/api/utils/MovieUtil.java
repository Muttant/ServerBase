package com.example.server.api.utils;

import com.example.server.api.dto.request.MovieRequestDto;
import com.example.server.api.dto.response.MovieResponseDto;
import com.example.server.api.exception.TKException;
import com.example.server.api.entity.Movie;
import org.apache.commons.lang3.StringUtils;

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
            dto.setTrailerUrl(entity.getTrailerUrl());
            dto.setMoTa(entity.getMoTa());
            dto.setNgayKhoiChieu(entity.getNgayKhoiChieu().toString());
            dto.setTheLoai(entity.getTheLoai());
            dto.setDaoDien(entity.getDaoDien());
            dto.setDienVien(entity.getDienVien());
            dto.setRated(entity.getRated());
            dto.setThoiLuong(entity.getThoiLuongPhim());
        }
        return dto;
    }

    public static Movie setDataEntityFromDto(Movie entity, MovieRequestDto dto) throws TKException {
        if (StringUtils.isEmpty(dto.getTenPhim()))
            throw new TKException(MOVIE_NAME_IS_EMPTY);

        if (StringUtils.isEmpty(dto.getBiDanh()))
            throw new TKException(ALIASES_IS_EMPTY);

        if (StringUtils.isEmpty(dto.getTrailerUrl()))
            throw new TKException(TRAILER_URL_IS_EMPTY);

        if (StringUtils.isEmpty(dto.getHinhAnhUrl()))
            throw new TKException(MOVIE_IMAGE_IS_EMPTY);

        if (StringUtils.isEmpty(dto.getMoTa()))
            throw new TKException((DESCRIPTION_IS_EMPTY));

        if (dto.getNgayKhoiChieu() == null)
            throw new TKException(RELEASE_DATE_IS_EMPTY);

        if (StringUtils.isEmpty(dto.getTheLoai()))
            throw new TKException((CATEGORIES_IS_EMPTY));

        if (StringUtils.isEmpty(dto.getDaoDien()))
            throw new TKException(DIRECTOR_IS_EMPTY);

        if (StringUtils.isEmpty(dto.getDienVien()))
            throw new TKException(ACTOR_IS_EMPTY);

        if (StringUtils.isEmpty(dto.getRated()))
            throw new TKException(RATED_IS_EMPTY);

        if (dto.getThoiLuongPhim() <= 0)
            throw new TKException(DURATION_IS_EMPTY);

        entity.setTenPhim(dto.getTenPhim());
        entity.setBiDanh(dto.getBiDanh());
        entity.setHinhAnhUrl(dto.getHinhAnhUrl());
        entity.setTrailerUrl(dto.getTrailerUrl());
        entity.setMoTa(dto.getMoTa());
        entity.setNgayKhoiChieu(dto.getNgayKhoiChieu());
        entity.setTheLoai(dto.getTheLoai());
        entity.setDaoDien(dto.getDaoDien());
        entity.setDienVien(dto.getDienVien());
        entity.setRated(dto.getRated());
        entity.setThoiLuongPhim(dto.getThoiLuongPhim());

        return entity;
    }
}
