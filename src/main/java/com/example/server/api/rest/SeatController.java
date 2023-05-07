package com.example.server.api.rest;

import com.example.server.api.dto.request.SeatRequestDto;
import com.example.server.api.service.SeatService;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequestMapping("/api/seat")
@RequiredArgsConstructor
public class SeatController {
    private final SeatService seatService;

    @GetMapping("/{seatId}")
    public TKResponse<SeatRequestDto> findById(@PathVariable("seatId") Long seatId){
        return seatService.findById(seatId);
    }

    @PostMapping
    public TKResponse<SeatRequestDto> save(@RequestBody SeatRequestDto dto){
        return seatService.save(dto);
    }

    @PutMapping("/{seatId}")
    public TKResponse<SeatRequestDto> update(@PathVariable("seatId") Long seatId, @RequestBody SeatRequestDto dto){
        return seatService.update(seatId, dto);
    }

    @DeleteMapping("/{seatId}")
    public TKResponse<Boolean> deleteById(@PathVariable("seatId") Long seatId){
        return seatService.deleteById(seatId);
    }


}
