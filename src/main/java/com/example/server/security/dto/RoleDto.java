package com.example.server.security.dto;

import com.example.server.security.entity.Role;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class RoleDto {
    private Long id;
    private String name;
    private String description;
    public RoleDto(Role entity){
        this.id = entity.getId();
        this.name = entity.getName();
        this.description = entity.getDescription();
    }

    public Role toEntity(){
        Role role = new Role();
        role.setName(this.name);
        role.setDescription(this.description);
        return role;
    }
}
