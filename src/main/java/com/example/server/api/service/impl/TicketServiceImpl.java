package com.example.server.api.service.impl;

import com.example.server.api.dto.request.BookTicketsRequestDto;
import com.example.server.api.dto.response.MovieSaleByWeekResponseDto;
import com.example.server.api.entity.Schedule;
import com.example.server.api.entity.Seat;
import com.example.server.api.entity.Ticket;
import com.example.server.api.repository.ScheduleRepository;
import com.example.server.api.repository.SeatRepository;
import com.example.server.api.repository.TicketRepository;
import com.example.server.api.service.TicketService;
import com.example.server.security.entity.User;
import com.example.server.security.repository.UserRepository;
import com.example.server.security.response.ResponseStatus;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import static com.example.server.security.response.ResponseStatus.MONTH_ERROR_1;
import static com.example.server.security.response.ResponseStatus.YEAR_ERROR;

@Service
@RequiredArgsConstructor
public class TicketServiceImpl implements TicketService {
    private final TicketRepository ticketRepository;
    private final UserRepository userRepository;
    private final ScheduleRepository scheduleRepository;
    private final SeatRepository seatRepository;

    @Override
    public TKResponse<String> save(BookTicketsRequestDto dto) {
        User user = userRepository.findByUsername(dto.getTaiKhoanNguoiDung());
        Schedule schedule = scheduleRepository.findById(dto.getMaLichChieu()).orElse(null);
        Ticket lastTicket = ticketRepository.findFirstByOrderByMaVeDesc();
        Integer finalMaVe = lastTicket.getMaVe() == null ? 0 : lastTicket.getMaVe() + 1;

        dto.getDanhSachVe().forEach(e -> {
            Seat seat = seatRepository.findById(e.getMaGhe()).orElse(null);
            Ticket ticket = new Ticket();
            ticket.setGiaVe(e.getGiaVe());
            ticket.setSeat(seat);
            ticket.setNgayGioDat(LocalDateTime.now());
            ticket.setUser(user);
            ticket.setSchedule(schedule);
            ticket.setMaVe(finalMaVe);

            ticketRepository.save(ticket);
        });

        return new TKResponse<>("Đặt vé thành công!", ResponseStatus.SUCCESS);
    }

    @Override
    public TKResponse<List<MovieSaleByWeekResponseDto>> getSalebyWeek(Integer month, Integer year) {
        if(month>12 || month<1 )
            return new TKResponse(null,MONTH_ERROR_1);
        int currentYear = LocalDateTime.now().getYear();
        if(year < 2010 || year > currentYear)
            return new TKResponse(null, YEAR_ERROR);

        List<MovieSaleByWeekResponseDto> data = ticketRepository.getSaleByWeek(month, year);

        return new TKResponse<>(data);
    }
}
