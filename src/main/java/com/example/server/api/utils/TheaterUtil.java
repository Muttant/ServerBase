package com.example.server.api.utils;

import com.example.server.api.dto.request.TheaterRequestDto;
import com.example.server.api.dto.response.TheaterResponseDto;
import com.example.server.api.entity.Theater;
import com.example.server.api.exception.TKException;
import org.apache.commons.lang3.StringUtils;

import static com.example.server.security.response.ResponseStatus.*;

public class TheaterUtil {
    public static TheaterRequestDto convertToDto(Theater entity){
        TheaterRequestDto dto =  null;
        if (entity != null){
            dto = new TheaterRequestDto();
            dto.setId(entity.getId());
            dto.setTenHeThongRap(entity.getTenHeThongRap());
            dto.setLogoUrl(entity.getLogoUrl());
        }
        return dto;
    }

    public static Theater setDataEntityFromDto(Theater entity, TheaterRequestDto dto) throws TKException{
        if (StringUtils.isEmpty(dto.getTenHeThongRap()))
            throw new TKException(THEATER_NAME_IS_EMPTY);
        if (StringUtils.isEmpty(dto.getLogoUrl()))
            throw new TKException((THEATER_LOGO_IS_EMPTY));

        entity.setTenHeThongRap(dto.getTenHeThongRap());
        entity.setLogoUrl(dto.getLogoUrl());

        return entity;
    }

}
