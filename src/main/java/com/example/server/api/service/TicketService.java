package com.example.server.api.service;

import com.example.server.api.dto.request.BookTicketsRequestDto;
import com.example.server.security.response.TKResponse;

public interface TicketService {
    TKResponse<String> save(BookTicketsRequestDto dto);
}
