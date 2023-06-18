package com.example.server.api.dto.response;

import com.example.server.api.entity.Room;
import com.example.server.security.dto.BaseObjectDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class RoomResponseDto {
    private long maRap;
    private String tenRap;

    public RoomResponseDto(Room entity) {
        if (entity == null)
            return;
        this.maRap = entity.getId();
        this.tenRap = entity.getTenRap();
    }
}
