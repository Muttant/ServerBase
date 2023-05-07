package com.example.server.api.utils;

import com.example.server.api.dto.request.SeatRequestDto;
import com.example.server.api.entity.Seat;
import com.example.server.api.exception.TKException;
import org.apache.commons.lang3.StringUtils;

public class SeatUtil {
    public static SeatRequestDto convertToDto(Seat entity){
        SeatRequestDto dto = null;
        if (entity != null) {
            dto = new SeatRequestDto();
            dto.setId(entity.getId());
            dto.setTenGhe(entity.getTenGhe());
            dto.setLoaiGhe(entity.getLoaiGhe());
            dto.setSoThuTu(entity.getSoThuTu());
//            marap

        }
        return dto;
    }
    public static Seat setDataEntityFromDto(Seat entity, SeatRequestDto dto) throws TKException {
//        if (StringUtils.isEmpty(dto.getTenGhe()))
//            throw new TKException((SEAT_NAME_IS_EMPTY));
//        if (StringUtils.isEmpty(dto.getLoaiGhe()))
//            throw new TKException((SEAT_TYPE_IS_EMPTY));
//        if (StringUtils.isEmpty(dto.getSoThuTu()))
//           throw new TKException((SEAT_ORDER_IS_EMPTY));
//  marap
        return entity;
    }
}
