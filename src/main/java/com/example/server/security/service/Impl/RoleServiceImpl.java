package com.example.server.security.service.Impl;

import com.example.server.security.dto.RoleDto;
import com.example.server.security.entity.Role;
import com.example.server.security.repository.RoleRepository;
import com.example.server.security.response.TKResponse;
import com.example.server.security.response.ResponseStatus;
import com.example.server.security.service.RoleService;
import com.example.server.security.validate.RoleVal;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class RoleServiceImpl implements RoleService {
    private final RoleRepository roleRepository;
    private final RoleVal roleVal;
    private final Logger logger = LoggerFactory.getLogger(RoleServiceImpl.class);

    @Override
    public TKResponse<RoleDto> save(RoleDto dto) {
        ResponseStatus status = roleVal.validate(null, dto);
        if (!status.equals(ResponseStatus.SUCCESS)) {
            return new TKResponse<>(status);
        }
        try {
            Role role = roleRepository.save(dto.toEntity());
            return new TKResponse<>(new RoleDto(role));
        } catch (Exception e) {
            logger.error("RoleServiceImpl save fail : {}", e.getMessage());
            return new TKResponse<>(ResponseStatus.SERVER_ERROR_WHEN_SAVE);
        }
    }

    @Override
    public TKResponse<RoleDto> update(Long id, RoleDto dto) {
        ResponseStatus status = roleVal.validate(id, dto);
        if (!status.equals(ResponseStatus.SUCCESS)) {
            return new TKResponse<>(status);
        }
        try {
            Role role = roleRepository.findById(id).orElse(null);
            setDataEntity(role, dto);
            return new TKResponse<>(new RoleDto(role));
        } catch (Exception e) {
            logger.error("RoleServiceImpl save fail : {}", e.getMessage());
            return new TKResponse<>(ResponseStatus.SERVER_ERROR_WHEN_SAVE);
        }
    }

    private void setDataEntity(Role entity, RoleDto dto) {
        entity.setName(dto.getName());
        entity.setDescription(dto.getDescription());
    }
}
