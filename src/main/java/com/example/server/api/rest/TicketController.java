package com.example.server.api.rest;

import com.example.server.api.dto.request.BookTicketsRequestDto;
import com.example.server.api.service.TicketService;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api//QuanLyDatVe")
@RequiredArgsConstructor
public class TicketController {
    private final TicketService ticketService;

    @PostMapping("/DatVe")
    public TKResponse<String> save(@RequestBody BookTicketsRequestDto dto){
        return ticketService.save(dto);
    }
}
