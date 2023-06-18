package com.example.server.api.rest;

import com.example.server.api.dto.request.TheaterRequestDto;
import com.example.server.api.dto.response.CinemaResponseDto;
import com.example.server.api.dto.response.TheaterResponseDto;
import com.example.server.api.dto.response.TheaterTestResponseDto;
import com.example.server.api.service.TheaterService;
import com.example.server.api.service.TheaterTestService;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/QuanLyRap")
@RequiredArgsConstructor
public class TheaterController {
    private final TheaterService theaterService;
    private final TheaterTestService theaterTestService;

    @GetMapping("/LayThongTinLichChieuHeThongRap")
    public TKResponse<List<TheaterResponseDto>> getAll(){
        return theaterService.getAll();
    }

    @GetMapping("/LayThongTinLichChieuHeThongRap2")
    public TKResponse<TheaterResponseDto> getById(@RequestParam("maHeThongRap") Long id){
        return theaterService.findById(id);
    }

    @GetMapping("/LayThongTinHeThongRap")
    public TKResponse<List<TheaterResponseDto>> getAll2(){
        return theaterService.getAll2();
    }

    @GetMapping("/LstTheater")
    public TKResponse<List<TheaterTestResponseDto>> getLstTheater(){
        return theaterTestService.getAll();
    }
    @GetMapping("/LayThongTinCumRap")
    public TKResponse<List<TheaterTestResponseDto>> findByTheaterId(@RequestParam("maHeThongRap") Long theaterId){
        return theaterTestService.findByTheaterId(theaterId);

    }

    @PostMapping
    public TKResponse<TheaterRequestDto> save(@RequestBody TheaterRequestDto dto){
        return theaterService.save(dto);
    }

    @PutMapping("/{theaterId}")
    public TKResponse<TheaterRequestDto> update(@PathVariable("theaterId") Long theaterId, @RequestBody TheaterRequestDto dto){
        return theaterService.update(theaterId, dto);
    }

    @DeleteMapping("/{theaterId}")
    public TKResponse<Boolean> deleteById(@PathVariable("theaterId") Long theaterId){
        return theaterService.deleteById(theaterId);
    }
}
