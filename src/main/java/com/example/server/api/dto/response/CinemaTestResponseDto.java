package com.example.server.api.dto.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CinemaTestResponseDto {
    private Long maCumRap;
    private String tenCumRap;
    private String hinhAnhUrl;
    private String diaChi;
}
