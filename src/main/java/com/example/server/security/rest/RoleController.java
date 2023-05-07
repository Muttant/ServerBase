package com.example.server.security.rest;

import com.example.server.security.dto.RoleDto;
import com.example.server.security.service.RoleService;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/role")
public class RoleController {
    private final RoleService roleService;

    @PostMapping
    public TKResponse<RoleDto> save(@RequestBody RoleDto dto) {
        return roleService.save(dto);
    }

    @PutMapping("/{id}")
    public TKResponse<RoleDto> update(@PathVariable("id") Long id, @RequestBody RoleDto dto) {
        return roleService.update(id, dto);
    }

    // todo: có cho xóa quyền không, nếu có/không thì phải làm sao
}
