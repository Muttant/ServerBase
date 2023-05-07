package com.example.server.api.dto.request;

import com.example.server.security.dto.BaseObjectDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CinemaRequestDto extends BaseObjectDto {
    private String tenCumRap;
    private String hinhAnhUrl;
    private String diaChi;
    private TheaterRequestDto maHeThongRap;
    private String sdt;
    private List<RoomRequestDto> rooms;
}
