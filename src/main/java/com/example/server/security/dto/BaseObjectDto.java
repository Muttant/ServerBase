package com.example.server.security.dto;

import com.example.server.security.entity.BaseObject;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Getter
@Setter
@NoArgsConstructor
public class BaseObjectDto {
    private long id;

    public BaseObjectDto(BaseObject object) {
        if (object!=null){
            this.id = object.getId();
        }
    }
}
