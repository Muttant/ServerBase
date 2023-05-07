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
public class TheaterRequestDto extends BaseObjectDto {
    private String tenHeThongRap;
    private String logoUrl;
    private List<CinemaRequestDto> cinemas;
}
