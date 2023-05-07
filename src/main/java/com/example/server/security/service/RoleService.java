package com.example.server.security.service;


import com.example.server.security.dto.RoleDto;
import com.example.server.security.response.TKResponse;

public interface RoleService {
    TKResponse<RoleDto> save(RoleDto dto);
    TKResponse<RoleDto> update(Long id , RoleDto dto);
}
