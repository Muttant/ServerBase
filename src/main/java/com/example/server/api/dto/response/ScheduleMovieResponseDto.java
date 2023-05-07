package com.example.server.api.dto.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ScheduleMovieResponseDto {
    private long maLichChieu;
    private long maRap;
    private String tenRap;
    private String ngayChieuGioChieu;
    private int giaVe;
    private byte thoiLuong;
}
