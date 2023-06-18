package com.example.server.api.dto.response;

import com.example.server.api.entity.Cinema;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.apache.commons.collections4.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CinemaResponseDto {
    private long maCumRap;
    private String tenCumRap;
    private String hinhAnh;
    private String diachi;
    private List<MovieResponseDto> danhSachPhim;
    private List<ScheduleMovieResponseDto> lichChieuPhim;
    private List<RoomResponseDto> danhSachRap;

    public CinemaResponseDto(Cinema entity, boolean hasRoom) {
        if (entity != null) {
            this.maCumRap = entity.getId();
            this.tenCumRap = entity.getTenCumRap();
            this.hinhAnh = entity.getHinhAnhUrl();
            this.diachi = entity.getDiaChi();
            if (hasRoom && CollectionUtils.isNotEmpty(entity.getRooms())){
                danhSachRap = new ArrayList<>();
                entity.getRooms().forEach(e -> danhSachRap.add(new RoomResponseDto(e)));
            }
        }
    }
}
