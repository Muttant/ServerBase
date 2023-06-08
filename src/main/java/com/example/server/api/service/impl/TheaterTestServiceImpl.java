package com.example.server.api.service.impl;

import com.example.server.api.dto.response.CinemaTestResponseDto;
import com.example.server.api.dto.response.TheaterResponseDto;
import com.example.server.api.dto.response.TheaterTestResponseDto;
import com.example.server.api.entity.Cinema;
import com.example.server.api.entity.Theater;
import com.example.server.api.repository.TheaterRepository;
import com.example.server.api.service.TheaterTestService;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class TheaterTestServiceImpl implements TheaterTestService {
    private final TheaterRepository theaterRepository;

    @Override
    public TKResponse<List<TheaterTestResponseDto>> getAll() {
        return new TKResponse<>(convertEntitiesThaterToDtos(theaterRepository.findAll()));
    }

    private List<TheaterTestResponseDto> convertEntitiesThaterToDtos(List<Theater> entities) {
        List<TheaterTestResponseDto> dtos = new ArrayList<>();

        entities.forEach(e -> {
            TheaterTestResponseDto dto = new TheaterTestResponseDto();
            dto.setMaHeThongRap(e.getId());
            dto.setTenHeThongRap(e.getTenHeThongRap());
            dto.setLogoUrl(e.getLogoUrl());
            dto.setCinemaTests(convertEntitiesCinemaToDtos(e.getCinemas()));
            dtos.add(dto);
        });
        return dtos;
    }
    private List<CinemaTestResponseDto> convertEntitiesCinemaToDtos(List<Cinema> entities) {
        List<CinemaTestResponseDto> dtos = new ArrayList<>();

        entities.forEach(e -> {
            CinemaTestResponseDto dto = new CinemaTestResponseDto();
            dto.setMaCumRap(e.getId());
            dto.setTenCumRap(e.getTenCumRap());
            dto.setHinhAnhUrl(e.getHinhAnhUrl());
            dto.setDiaChi(e.getDiaChi());
            dtos.add(dto);
        });
        return dtos;
    }
}
