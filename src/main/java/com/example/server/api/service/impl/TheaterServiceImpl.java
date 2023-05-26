package com.example.server.api.service.impl;

import com.example.server.api.dto.request.TheaterRequestDto;

import com.example.server.api.dto.response.TheaterResponseDto;
import com.example.server.api.entity.Theater;
import com.example.server.api.exception.TKException;
import com.example.server.api.repository.TheaterRepository;
import com.example.server.api.service.TheaterService;

import com.example.server.api.utils.TheaterUtil;
import com.example.server.api.utils.TheaterUtil2;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

import static com.example.server.security.response.ResponseStatus.*;

@Service
@RequiredArgsConstructor
public class TheaterServiceImpl implements TheaterService {
    private final TheaterRepository theaterRepository;
    private final TheaterUtil2 theaterUtil;

    @Override
    public TKResponse<List<TheaterResponseDto>> getAll() {
        return new TKResponse<>(theaterUtil.toTheaterDtos(theaterRepository.findAll()));
    }

    @Override
    public TKResponse<TheaterRequestDto> findById(UUID id) {
        Theater entity = theaterRepository.findById(id).orElse(null);
        if (entity == null)
            return new TKResponse<>(ID_NOT_EXIST);

        return new TKResponse<>(TheaterUtil.convertToDto(entity));
    }

    @Override
    public TKResponse<TheaterRequestDto> save(TheaterRequestDto dto) {
        try {
            Theater entity = new Theater();
            TheaterUtil.setDataEntityFromDto(entity, dto);
            entity = theaterRepository.save(entity);
            return new TKResponse<>(TheaterUtil.convertToDto(entity));
        } catch (TKException e) {
            return new TKResponse<>(e);
        }
    }

    @Override
    public TKResponse<TheaterRequestDto> update(UUID id, TheaterRequestDto dto) {
        Theater entity = theaterRepository.findById(id).orElse(null);
        if (entity == null)
            return new TKResponse<>(ID_NOT_EXIST);

        try {
            TheaterUtil.setDataEntityFromDto(entity, dto);
            entity = theaterRepository.save(entity);
            return new TKResponse<>(TheaterUtil.convertToDto(entity));
        } catch (TKException e) {
            return new TKResponse<>(e);
        }
    }

    @Override
    public TKResponse<Boolean> deleteById(UUID id) {
        if (!theaterRepository.existsById(id))
            return new TKResponse<>(ID_NOT_EXIST);
        try {
            theaterRepository.deleteById(id);
            return new TKResponse<>();
        } catch (DataAccessException e) {
            return new TKResponse<>(SERVER_ERROR_WHEN_DELETE);
        }
    }
}
