package com.example.server.api.rest;

import com.example.server.api.dto.request.CinemaRequestDto;
import com.example.server.api.dto.response.CinemaResponseDto;
import com.example.server.api.service.CinemaService;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/QuanLyCumRap")
@RequiredArgsConstructor
public class CinemaController {
    private final CinemaService cinemaService;

    @GetMapping("/{cinemaId}")
    public TKResponse<CinemaRequestDto> findById(@PathVariable("cinemaId") Long cinemaId){
        return cinemaService.findById(cinemaId);
    }

    @GetMapping("/LayThongTinCumRapTheoHeThong")
    public TKResponse<List<CinemaResponseDto>> findByTheaterId(@RequestParam("maHeThongRap") Long theaterId){
        return cinemaService.findByTheaterId(theaterId);
    }

    @PostMapping
    public TKResponse<CinemaRequestDto> save(@RequestBody CinemaRequestDto dto){
        return cinemaService.save(dto);
    }

    @PutMapping("/{cinemaId}")
    public TKResponse<CinemaRequestDto> update(@PathVariable("cinemaId") Long cinemaId, @RequestBody CinemaRequestDto dto){
        return cinemaService.update(cinemaId, dto);
    }

    @DeleteMapping("/{cinemaId}")
    public TKResponse<Boolean> deleteById(@PathVariable("cinemaId") Long cinemaId){
        return cinemaService.deleteById(cinemaId);
    }
}
