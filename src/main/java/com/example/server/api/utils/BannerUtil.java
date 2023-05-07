package com.example.server.api.utils;

import com.example.server.api.dto.request.BannerRequestDto;
import com.example.server.api.dto.response.BannerResponseDto;
import com.example.server.api.entity.Banner;
import com.example.server.api.entity.Movie;
import com.example.server.api.exception.TKException;
import org.apache.commons.lang3.StringUtils;

public class BannerUtil {
    public static BannerResponseDto convertToDto(Banner entity){
        BannerResponseDto dto = null;
        if (entity != null) {
            dto = new BannerResponseDto();
            dto.setId(entity.getId());
            dto.setHinhAnh(entity.getHinhAnhUrl());
            Movie movie = entity.getMovie();
            dto.setTrailer(movie.getTrailerUrl());
            dto.setBiDanh(movie.getBiDanh());
            dto.setTenPhim(movie.getTenPhim());
        }
        return dto;
    }
    public static Banner setDataEntityFromDto(Banner entity, BannerRequestDto dto) throws TKException {
//        if (StringUtils.isEmpty(dto.getHinhAnhUrl()))
//            throw new TKException((BANNER_IMAGE_IS_EMPTY));


        return entity;
    }
}
