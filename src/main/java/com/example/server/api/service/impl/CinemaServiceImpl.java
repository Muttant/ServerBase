package com.example.server.api.service.impl;

import com.example.server.api.dto.request.CinemaRequestDto;
import com.example.server.api.dto.response.CinemaResponseDto;
import com.example.server.api.entity.Cinema;
import com.example.server.api.exception.TKException;
import com.example.server.api.repository.CinemaRepository;
import com.example.server.api.service.CinemaService;
import com.example.server.api.utils.CinemaUtil;

import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import java.util.List;

import static com.example.server.security.response.ResponseStatus.*;

@Service
@RequiredArgsConstructor
public class CinemaServiceImpl implements CinemaService {

    private final CinemaRepository cinemaRepository;

    @Override
    public TKResponse<CinemaRequestDto> findById(Long id) {
        Cinema entity = cinemaRepository.findById(id).orElse(null);
        if (entity == null)
            return new TKResponse<>(ID_NOT_EXIST);

        return new TKResponse<>(CinemaUtil.convertToDto(entity));
    }

    @Override
    public TKResponse<List<CinemaResponseDto>> findByTheaterId(Long id) {
        return new TKResponse(cinemaRepository.findAllByTheaterId(id));
    }

    @Override
    public TKResponse<CinemaRequestDto> save(CinemaRequestDto dto) {
        try {
            Cinema entity = new Cinema();
            CinemaUtil.setDataEntityFromDto(entity, dto);
            entity = cinemaRepository.save(entity);
            return new TKResponse<>(CinemaUtil.convertToDto(entity));
        } catch (TKException e) {
            return new TKResponse<>(e);
        }
    }

    @Override
    public TKResponse<CinemaRequestDto> update(Long id, CinemaRequestDto dto) {
        Cinema entity = cinemaRepository.findById(id).orElse(null);
        if (entity == null)
            return new TKResponse<>(ID_NOT_EXIST);

        try {
            CinemaUtil.setDataEntityFromDto(entity, dto);
            entity = cinemaRepository.save(entity);
            return new TKResponse<>(CinemaUtil.convertToDto(entity));
        } catch (TKException e) {
            return new TKResponse<>(e);
        }
    }

    @Override
    public TKResponse<Boolean> deleteById(Long id) {
        if (!cinemaRepository.existsById(id))
            return new TKResponse<>(ID_NOT_EXIST);
        try {
            cinemaRepository.deleteById(id);
            return new TKResponse<>();
        } catch (DataAccessException e) {
            return new TKResponse<>(SERVER_ERROR_WHEN_DELETE);
        }
    }
}
