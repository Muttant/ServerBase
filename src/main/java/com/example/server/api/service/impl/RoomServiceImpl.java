package com.example.server.api.service.impl;

import com.example.server.api.dto.request.RoomRequestDto;
import com.example.server.api.entity.Room;
import com.example.server.api.exception.TKException;
import com.example.server.api.repository.RoomRepository;
import com.example.server.api.service.RoomService;
import com.example.server.api.utils.RoomUtil;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import static com.example.server.security.response.ResponseStatus.*;

@Service
@RequiredArgsConstructor
public class RoomServiceImpl implements RoomService {
    private final RoomRepository roomRepository;

    @Override
    public TKResponse<RoomRequestDto> findById(Long id) {
        Room entity = roomRepository.findById(id).orElse(null);
        if (entity == null)
            return new TKResponse<>(ID_NOT_EXIST);

        return new TKResponse<>(RoomUtil.convertToDto(entity));
    }

    @Override
    public TKResponse<RoomRequestDto> save(RoomRequestDto dto) {
        try {
            Room entity = new Room();
            RoomUtil.setDataEntityFromDto(entity, dto);
            entity = roomRepository.save(entity);
            return new TKResponse<>(RoomUtil.convertToDto(entity));
        } catch (TKException e) {
            return new TKResponse<>(e);
        }
    }

    @Override
    public TKResponse<RoomRequestDto> update(Long id, RoomRequestDto dto) {
        Room entity = roomRepository.findById(id).orElse(null);
        if (entity == null)
            return new TKResponse<>(ID_NOT_EXIST);

        try {
            RoomUtil.setDataEntityFromDto(entity, dto);
            entity = roomRepository.save(entity);
            return new TKResponse<>(RoomUtil.convertToDto(entity));
        } catch (TKException e) {
            return new TKResponse<>(e);
        }
    }

    @Override
    public TKResponse<Boolean> deleteById(Long id) {
        if (!roomRepository.existsById(id))
            return new TKResponse<>(ID_NOT_EXIST);
        try {
            roomRepository.deleteById(id);
            return new TKResponse<>();
        } catch (DataAccessException e) {
            return new TKResponse<>(SERVER_ERROR_WHEN_DELETE);
        }
    }
}
