package com.example.server.api.dto.response;

import com.example.server.security.dto.BaseObjectDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ScheduleInfoResponseDto {
    private long maPhim;
    private String tenPhim;
    private String biDanh;
    private String trailer;
    private String hinhAnh;
    private String daoDien;
    private String dienVien;
    private String theLoai;
    private String rated;
    private String moTa;
    private LocalDate ngayKhoiChieu;
    private int danhGia;
    private List<TheaterResponseDto> heThongRapChieu;
}
