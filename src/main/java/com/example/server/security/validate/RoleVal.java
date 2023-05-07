package com.example.server.security.validate;

import com.example.server.security.dto.RoleDto;
import com.example.server.security.repository.RoleRepository;
import com.example.server.security.response.ResponseStatus;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.util.ObjectUtils;
import org.springframework.util.StringUtils;

@Component
@RequiredArgsConstructor
public class RoleVal {
    private final RoleRepository roleRepository;

    public ResponseStatus validate(Long id, RoleDto dto){
        if (null != id && !roleRepository.existsById(id)){
            return ResponseStatus.ID_NOT_EXIST;
        }
        if (ObjectUtils.isEmpty(dto)){
            return ResponseStatus.OBJECT_IS_EMPTY;
        }
        if (StringUtils.isEmpty(dto.getName())){
            return ResponseStatus.NAME_IS_EMPTY;
        }
        if (null == id && roleRepository.hasName((long)-1, dto.getName())){
            return ResponseStatus.NAME_IS_EXIST;
        }
        if (null != id && roleRepository.hasName(id, dto.getName())){
            return ResponseStatus.NAME_IS_EXIST;
        }

        return ResponseStatus.SUCCESS;
    }
}
