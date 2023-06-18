package com.example.server.api.dto.response;

import com.example.server.security.dto.BaseObjectDto;
import com.example.server.security.dto.UserDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class TicketResponseDto {
    private long maVe;
    private int giaVe;
    private String ngayDat;
    private String tenPhim;
    private byte thoiLuongPhim;
    private  String taiKhoan;
    private List<SeatInfoResponseDto> danhSachGhe;
}
