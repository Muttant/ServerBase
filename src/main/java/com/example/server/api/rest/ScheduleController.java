package com.example.server.api.rest;

import com.example.server.api.dto.response.ScheduleInfoResponseDto;
import com.example.server.api.dto.response.ScheduleResponseDto;
import com.example.server.api.dto.response.ScheduleSeatDto;
import com.example.server.api.service.ScheduleService;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class ScheduleController {
    private final ScheduleService scheduleService;
    @GetMapping("/QuanLyRap/LayThongTinLichChieuPhim")
    public TKResponse<ScheduleInfoResponseDto> finByMovieId(@RequestParam("MaPhim") long movieId){
        return scheduleService.finByMovieId(movieId);
    }
    @GetMapping("/QuanLyDatVe/LayDanhSachPhongVe")
    public TKResponse<ScheduleSeatDto> findListSeat(@RequestParam("maLichChieu") long maLichChieu){
        return scheduleService.findListSeat(maLichChieu);
    }

    @PostMapping("/QuanLyDatVe/TaoLichChieu")
    public void findListSeat(@RequestBody ScheduleResponseDto dto){
        scheduleService.add(dto);
    }
}
