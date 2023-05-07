package com.example.server.api.dto.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ScheduleSeatDto {
    private ScheduleRoomDto thongTinPhim;
    private List<SeatResponseDto> danhSachGhe;
}
