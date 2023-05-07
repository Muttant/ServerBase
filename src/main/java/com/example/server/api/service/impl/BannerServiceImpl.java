package com.example.server.api.service.impl;

import com.example.server.api.dto.request.BannerRequestDto;
import com.example.server.api.dto.response.BannerResponseDto;
import com.example.server.api.entity.Banner;
import com.example.server.api.exception.TKException;
import com.example.server.api.repository.BannerRepository;
import com.example.server.api.service.BannerService;
import com.example.server.api.utils.BannerUtil;
import com.example.server.security.response.TKResponse;

import lombok.RequiredArgsConstructor;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import java.util.UUID;

import static com.example.server.security.response.ResponseStatus.*;

@Service
@RequiredArgsConstructor
public class BannerServiceImpl implements BannerService {
    private final BannerRepository BannerRepository;

    @Override
    public TKResponse<BannerResponseDto> findById(UUID id) {
        Banner entity = BannerRepository.findById(id).orElse(null);
        if (entity == null)
            return new TKResponse<>(ID_NOT_EXIST);

        return new TKResponse<>(BannerUtil.convertToDto(entity));
    }

    @Override
    public TKResponse<BannerResponseDto> save(BannerRequestDto dto) {
        try {
            Banner entity = new Banner();
            BannerUtil.setDataEntityFromDto(entity, dto);
            entity = BannerRepository.save(entity);
            return new TKResponse<>(BannerUtil.convertToDto(entity));
        } catch (TKException e) {
            return new TKResponse<>(e);
        }
    }

    @Override
    public TKResponse<BannerResponseDto> update(UUID id, BannerRequestDto dto) {
        Banner entity = BannerRepository.findById(id).orElse(null);
        if (entity == null)
            return new TKResponse<>(ID_NOT_EXIST);

        try {
            BannerUtil.setDataEntityFromDto(entity, dto);
            entity = BannerRepository.save(entity);
            return new TKResponse<>(BannerUtil.convertToDto(entity));
        } catch (TKException e) {
            return new TKResponse<>(e);
        }
    }

    @Override
    public TKResponse<Boolean> deleteById(UUID id) {
        if (!BannerRepository.existsById(id))
            return new TKResponse<>(ID_NOT_EXIST);
        try {
            BannerRepository.deleteById(id);
            return new TKResponse<>();
        } catch (DataAccessException e) {
            return new TKResponse<>(SERVER_ERROR_WHEN_DELETE);
        }
    }
}
