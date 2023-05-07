package com.example.server.api.utils;

import com.example.server.api.dto.request.CinemaRequestDto;
import com.example.server.api.entity.Cinema;
import com.example.server.api.exception.TKException;
import org.apache.commons.lang3.StringUtils;

public class CinemaUtil {
    public static CinemaRequestDto convertToDto(Cinema entity){
        CinemaRequestDto dto = null;
        if (entity != null) {
            dto = new CinemaRequestDto();
            dto.setId(entity.getId());
            dto.setTenCumRap(entity.getTenCumRap());
            dto.setHinhAnhUrl(entity.getHinhAnhUrl());
            dto.setDiaChi(entity.getDiaChi());
            dto.setSdt(entity.getSdt());
//            mahethongrap

        }
        return dto;
    }
    public static Cinema setDataEntityFromDto(Cinema entity, CinemaRequestDto dto) throws TKException {
//        if (StringUtils.isEmpty(dto.getTenCumRap()))
//            throw new TKException((CINEMA_NAME_IS_EMPTY));
//        mahethongrap
        return entity;
    }
}
