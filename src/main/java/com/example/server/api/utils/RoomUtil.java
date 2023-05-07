package com.example.server.api.utils;

import com.example.server.api.dto.request.RoomRequestDto;
import com.example.server.api.entity.Room;
import com.example.server.api.exception.TKException;
import org.apache.commons.lang3.StringUtils;

public class RoomUtil {
    public static RoomRequestDto convertToDto(Room entity){
        RoomRequestDto dto = null;
        if (entity != null) {
            dto = new RoomRequestDto();
            dto.setId(entity.getId());
            dto.setTenRap(entity.getTenRap());


//            macumrap

        }
        return dto;
    }
    public static Room setDataEntityFromDto(Room entity, RoomRequestDto dto) throws TKException {
//        if (StringUtils.isEmpty(dto.getTenRap()))
//            throw new TKException((ROOM_NAME_IS_EMPTY));
//        mahethongrap
        return entity;
    }
}
