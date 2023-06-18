package com.example.server.api.service.impl;

import com.example.server.api.dto.request.BookTicketsRequestDto;
import com.example.server.api.dto.response.MovieResponseDto;
import com.example.server.api.dto.response.MovieSaleByWeekResponseDto;
import com.example.server.api.dto.response.SeatInfoResponseDto;
import com.example.server.api.dto.response.TicketResponseDto;
import com.example.server.api.entity.*;
import com.example.server.api.repository.ScheduleRepository;
import com.example.server.api.repository.SeatRepository;
import com.example.server.api.repository.TicketRepository;
import com.example.server.api.service.TicketService;
import com.example.server.api.utils.MovieUtil;
import com.example.server.api.utils.TicketUltil;
import com.example.server.security.entity.User;
import com.example.server.security.repository.UserRepository;
import com.example.server.security.response.ResponseStatus;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

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

    @Override
    public TKResponse<List<TicketResponseDto>> getAllTicket() {
        List<Ticket> tickets = ticketRepository.findAll();
        List<TicketResponseDto> ticketDtos = convertToDto(tickets);

        return new TKResponse<>(ticketDtos);

    }

    private List<TicketResponseDto> convertToDto(List<Ticket> tickets) {
        List<TicketResponseDto> ticketResponseDtos = new ArrayList<>();
        Map<Integer, List<Ticket>> map = tickets.stream().collect(Collectors.groupingBy(Ticket::getMaVe));

        for (Integer key: map.keySet()) {
            List<Ticket> ticketList = map.get(key);
            Ticket ticket = ticketList.get(0);
            TicketResponseDto ticketResponseDto = new TicketResponseDto();
            ticketResponseDto.setGiaVe(ticket.getGiaVe());
            ticketResponseDto.setMaVe(ticket.getMaVe());
            ticketResponseDto.setTaiKhoan(ticket.getUser().getUsername());
            ticketResponseDto.setNgayDat(ticket.getNgayGioDat().toString());
            Movie movie = ticket.getSchedule().getMovie();
            ticketResponseDto.setTenPhim(movie.getTenPhim());
            ticketResponseDto.setThoiLuongPhim(movie.getThoiLuongPhim());
            ticketResponseDtos.add(ticketResponseDto);
            List<SeatInfoResponseDto> seatInfoResponseDtos = new ArrayList<>();
            ticketResponseDto.setDanhSachGhe(seatInfoResponseDtos);
            ticketList.forEach(e -> {
                SeatInfoResponseDto seatInfoResponseDto = new SeatInfoResponseDto();
                Seat seat = e.getSeat();
                seatInfoResponseDto.setMaGhe(seat.getId());
                seatInfoResponseDto.setTenGhe(seat.getTenGhe());
                Room room = e.getSchedule().getRoom();
                seatInfoResponseDto.setMaRap(room.getId());
                seatInfoResponseDto.setTenRap(room.getTenRap());
                Cinema cinema = room.getCinema();
                seatInfoResponseDto.setMaCumRap(cinema.getId());
                seatInfoResponseDto.setTenCumRap(cinema.getTenCumRap());
                Theater theater = cinema.getMaHeThongRap();
                seatInfoResponseDto.setMaHeThongRap(theater.getId());
                seatInfoResponseDto.setTenHeThongRap(theater.getTenHeThongRap());
                seatInfoResponseDtos.add(seatInfoResponseDto);
            });
        }

        return ticketResponseDtos;
    }
}
