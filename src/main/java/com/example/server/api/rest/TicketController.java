package com.example.server.api.rest;

import com.example.server.api.dto.request.BookTicketsRequestDto;
import com.example.server.api.dto.response.MovieSaleByWeekResponseDto;
import com.example.server.api.dto.response.TicketResponseDto;
import com.example.server.api.service.TicketService;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/QuanLyDatVe")
@RequiredArgsConstructor
public class TicketController {
    private final TicketService ticketService;

    @PostMapping("/DatVe")
    public TKResponse<String> save(@RequestBody BookTicketsRequestDto dto){
        return ticketService.save(dto);
    }

    @GetMapping("/DoanhThuPhimTheoThang")
    public TKResponse<List<MovieSaleByWeekResponseDto>> getSalebyWeek(Integer month, Integer year){ return ticketService.getSalebyWeek(month, year); }

    @GetMapping("/getAllTicket")
    public TKResponse<List<TicketResponseDto>> getAllTicket(){ return ticketService.getAllTicket(); }
}
