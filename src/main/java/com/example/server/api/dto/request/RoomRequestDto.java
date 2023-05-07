package com.example.server.api.dto.request;

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
public class RoomRequestDto extends BaseObjectDto {
    private String tenRap;
    private List<SeatRequestDto> seats;
    private CinemaRequestDto cinema;
}
