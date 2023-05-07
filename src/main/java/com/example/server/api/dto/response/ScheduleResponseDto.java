package com.example.server.api.dto.response;

import com.example.server.security.dto.BaseObjectDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ScheduleResponseDto extends BaseObjectDto {
    private MovieResponseDto movieResponseDto;
    private LocalDateTime ngayGioiChieu;
    private int giaVe;
}
