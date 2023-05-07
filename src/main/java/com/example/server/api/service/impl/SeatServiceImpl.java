package com.example.server.api.service.impl;

import com.example.server.api.dto.request.SeatRequestDto;
import com.example.server.api.entity.Seat;
import com.example.server.api.exception.TKException;
import com.example.server.api.repository.SeatRepository;
import com.example.server.api.service.SeatService;
import com.example.server.api.utils.SeatUtil;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import static com.example.server.security.response.ResponseStatus.*;

@Service
@RequiredArgsConstructor
public class SeatServiceImpl implements SeatService {
    private final SeatRepository seatRepository;

    @Override
    public TKResponse<SeatRequestDto> findById(long id) {
        Seat entity = seatRepository.findById(id).orElse(null);
        if (entity == null)
            return new TKResponse<>(ID_NOT_EXIST);

        return new TKResponse<>(SeatUtil.convertToDto(entity));
    }

    @Override
    public TKResponse<SeatRequestDto> save(SeatRequestDto dto) {
        try {
            Seat entity = new Seat();
            SeatUtil.setDataEntityFromDto(entity, dto);
            entity = seatRepository.save(entity);
            return new TKResponse<>(SeatUtil.convertToDto(entity));
        } catch (TKException e) {
            return new TKResponse<>(e);
        }
    }

    @Override
    public TKResponse<SeatRequestDto> update(long id, SeatRequestDto dto) {
        Seat entity = seatRepository.findById(id).orElse(null);
        if (entity == null)
            return new TKResponse<>(ID_NOT_EXIST);

        try {
            SeatUtil.setDataEntityFromDto(entity, dto);
            entity = seatRepository.save(entity);
            return new TKResponse<>(SeatUtil.convertToDto(entity));
        } catch (TKException e) {
            return new TKResponse<>(e);
        }
    }

    @Override
    public TKResponse<Boolean> deleteById(long id) {
        if (!seatRepository.existsById(id))
            return new TKResponse<>(ID_NOT_EXIST);
        try {
            seatRepository.deleteById(id);
            return new TKResponse<>();
        } catch (DataAccessException e) {
            return new TKResponse<>(SERVER_ERROR_WHEN_DELETE);
        }
    }
}
