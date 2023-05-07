package com.example.server.api.service.impl;

import com.example.server.api.dto.response.SeatInfoResponseDto;
import com.example.server.api.dto.response.TicketResponseDto;
import com.example.server.api.dto.response.UserInfoResponseDto;
import com.example.server.api.entity.*;
import com.example.server.api.repository.TicketRepository;
import com.example.server.api.service.UserService;
import com.example.server.security.entity.User;
import com.example.server.security.repository.UserRepository;
import com.example.server.security.response.ResponseStatus;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class UserServiceImpl2 implements UserService {
    private final UserRepository userRepository;
    private final TicketRepository ticketRepository;
    @Override
    public TKResponse<UserInfoResponseDto> getUserInfo(UserInfoResponseDto dto) {
        User user = userRepository.findByUsername(dto.getTaiKhoan());
        if (user == null)
            return new TKResponse<>(ResponseStatus.USER_NOT_FOUND);

        UserInfoResponseDto result = new UserInfoResponseDto();
        result.setEmail(user.getEmail());
        result.setSoDT(user.getPhone());
        result.setHoTen(user.getFullName());
        result.setMaNhom("GP09");
        result.setMatKhau(user.getPassword());
        result.setTaiKhoan(user.getUsername());
        result.setLoaiNguoiDung("QuanTri");
        List<TicketResponseDto> ticketResponseDtos = new ArrayList<>();
        result.setThongTinDatVe(ticketResponseDtos);

        List<Ticket> tickets = ticketRepository.getByUsername(dto.getTaiKhoan());

        Map<Integer, List<Ticket>> map = tickets.stream().collect(Collectors.groupingBy(Ticket::getMaVe));

        for (Integer key: map.keySet()) {
            List<Ticket> ticketList = map.get(key);
            Ticket ticket = ticketList.get(0);
            TicketResponseDto ticketResponseDto = new TicketResponseDto();
            ticketResponseDto.setGiaVe(ticket.getGiaVe());
            ticketResponseDto.setMaVe(ticket.getMaVe());
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

        return new TKResponse<>(result);
    }
}
