package com.example.server.api.rest;

import com.example.server.api.dto.request.RoomRequestDto;
import com.example.server.api.service.RoomService;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequestMapping("/api/room")
@RequiredArgsConstructor
public class RoomController {
    private final RoomService roomService;

    @GetMapping("/{roomId}")
    public TKResponse<RoomRequestDto> findById(@PathVariable("roomId") Long roomId){
        return roomService.findById(roomId);
    }

    @PostMapping
    public TKResponse<RoomRequestDto> save(@RequestBody RoomRequestDto dto){
        return roomService.save(dto);
    }

    @PutMapping("/{roomId}")
    public TKResponse<RoomRequestDto> update(@PathVariable("roomId") Long roomId, @RequestBody RoomRequestDto dto){
        return roomService.update(roomId, dto);
    }

    @DeleteMapping("/{roomId}")
    public TKResponse<Boolean> deleteById(@PathVariable("roomId") Long roomId){
        return roomService.deleteById(roomId);
    }
}
