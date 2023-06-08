package com.example.server.api.rest;

import com.example.server.api.dto.request.TheaterRequestDto;
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
    @GetMapping("/LstTheater")
    public TKResponse<List<TheaterTestResponseDto>> getLstTheater(){
        return theaterTestService.getAll();
    }

    @GetMapping("/{theaterId}")
    public TKResponse<TheaterRequestDto> findById(@PathVariable("theaterId") UUID theaterId){
        return theaterService.findById(theaterId);
    }

    @PostMapping
    public TKResponse<TheaterRequestDto> save(@RequestBody TheaterRequestDto dto){
        return theaterService.save(dto);
    }

    @PutMapping("/{theaterId}")
    public TKResponse<TheaterRequestDto> update(@PathVariable("theaterId") UUID theaterId, @RequestBody TheaterRequestDto dto){
        return theaterService.update(theaterId, dto);
    }

    @DeleteMapping("/{theaterId}")
    public TKResponse<Boolean> deleteById(@PathVariable("theaterId") UUID theaterId){
        return theaterService.deleteById(theaterId);
    }
}
