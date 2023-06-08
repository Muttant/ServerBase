package com.example.server.api.rest;

import com.example.server.api.dto.request.MovieRequestDto;
import com.example.server.api.dto.response.MovieResponseDto;
import com.example.server.api.service.MovieService;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/QuanLyPhim")
@RequiredArgsConstructor
public class MovieController {
    private final MovieService movieService;

    @GetMapping("/LayThongTinPhim")
    public TKResponse<MovieResponseDto> findById(@RequestParam("MaPhim") Long movieId) {
        return movieService.findById(movieId);
    }

    @GetMapping("/LayDanhSachPhim")
    public TKResponse<List<MovieResponseDto>> findAll() {
        return movieService.findAllAndFilter();
    }

    @GetMapping("/LayToanBoDanhSachPhim")
    public TKResponse<List<MovieResponseDto>> findAllNotFiler() {
        return movieService.findAllNotFilter();
    }

    @PostMapping("/ThemPhimUploadHinh")
    public TKResponse<MovieResponseDto> save(@RequestBody MovieRequestDto dto) {
        return movieService.save(dto);
    }

    @PostMapping("/CapNhatPhim")
    public TKResponse<MovieResponseDto> update(@RequestBody MovieRequestDto dto) {
        return movieService.update(dto);
    }

    @DeleteMapping("/{movieId}")
    public TKResponse<Boolean> deleteById(@PathVariable("movieId") Long movieId) {
        return movieService.deleteById(movieId);
    }
}
