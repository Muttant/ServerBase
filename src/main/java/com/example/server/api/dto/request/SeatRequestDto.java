package com.example.server.api.dto.request;

import com.example.server.security.dto.BaseObjectDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SeatRequestDto extends BaseObjectDto {
    private String tenGhe;
    private String loaiGhe;
    private String soThuTu;
    private RoomRequestDto maRap;
}
