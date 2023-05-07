package com.example.server.api.dto.response;

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
public class CinemaResponseDto {
    private long maCumRap;
    private String tenCumRap;
    private String hinhAnh;
    private List<ScheduleMovieResponseDto> lichChieuPhim;
}
