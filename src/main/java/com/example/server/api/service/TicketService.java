package com.example.server.api.service;

import com.example.server.api.dto.request.BookTicketsRequestDto;
import com.example.server.api.dto.response.MovieSaleByWeekResponseDto;
import com.example.server.api.dto.response.TicketResponseDto;
import com.example.server.security.response.TKResponse;

import java.util.List;

public interface TicketService {
    TKResponse<String> save(BookTicketsRequestDto dto);
    TKResponse<List<MovieSaleByWeekResponseDto>> getSalebyWeek(Integer month, Integer year);
    TKResponse<List<TicketResponseDto>> getAllTicket();
}
