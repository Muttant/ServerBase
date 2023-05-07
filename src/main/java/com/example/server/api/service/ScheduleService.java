package com.example.server.api.service;

import com.example.server.api.dto.response.ScheduleInfoResponseDto;
import com.example.server.api.dto.response.ScheduleSeatDto;
import com.example.server.security.response.TKResponse;

public interface ScheduleService {
    TKResponse<ScheduleInfoResponseDto> finByMovieId(long movieId);

    TKResponse<ScheduleSeatDto> findListSeat(long maLichChieu);
}
