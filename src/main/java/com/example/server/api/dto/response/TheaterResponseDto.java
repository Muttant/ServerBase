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
public class TheaterResponseDto {
    private long maHeThongRap;
    private String tenHeThongRap;
    private String logo;
    private List<CinemaResponseDto> cumRapChieu;
}
