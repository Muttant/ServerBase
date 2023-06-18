package com.example.server.api.dto.response;

import com.example.server.api.entity.Theater;
import com.example.server.security.dto.BaseObjectDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.apache.commons.collections4.CollectionUtils;

import java.util.List;
import java.util.stream.Collectors;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class TheaterResponseDto {
    private long maHeThongRap;
    private String tenHeThongRap;
    private String logo;
    private List<CinemaResponseDto> cumRapChieu;
    private List<CinemaResponseDto> lstCumRap;

    public TheaterResponseDto(Theater entity){
        if (entity != null) {
            this.maHeThongRap = entity.getId();
            this.tenHeThongRap = entity.getTenHeThongRap();
            this.logo = entity.getLogoUrl();
            if (CollectionUtils.isNotEmpty(entity.getCinemas()))
                this.lstCumRap = entity.getCinemas().stream().map(e -> new CinemaResponseDto(e, false)).collect(Collectors.toList());
        }
    }

}
