package com.example.server.api.dto.response;

import com.example.server.api.entity.Seat;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SeatInfoResponseDto {
    private long maCumRap;
    private long maGhe;
    private long maHeThongRap;
    private long maRap;
    private String tenCumRap;
    private String tenGhe;
    private String tenHeThongRap;
    private String tenRap;
}
