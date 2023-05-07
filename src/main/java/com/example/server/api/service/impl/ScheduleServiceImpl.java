package com.example.server.api.service.impl;

import com.example.server.api.dto.response.*;
import com.example.server.api.entity.*;
import com.example.server.api.repository.*;
import com.example.server.api.service.ScheduleService;
import com.example.server.api.utils.ScheduleUltil;
import com.example.server.security.response.ResponseStatus;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class ScheduleServiceImpl implements ScheduleService {
    private final ScheduleRepository scheduleRepository;
    private final MovieRepository movieRepository;
    private final ScheduleUltil scheduleUltill;
    private final TheaterRepository theaterRepository;
    private final CinemaRepository cinemaRepository;
    private final SeatRepository seatRepository;

    @Override
    public TKResponse<ScheduleInfoResponseDto> finByMovieId(long movieId) {
        Movie movie = movieRepository.findById(movieId).orElse(null);
        if (movie == null)
            return new TKResponse<>(ResponseStatus.ID_NOT_EXIST);

        ScheduleInfoResponseDto result = scheduleUltill.convertToScheduleInfoDto(movie);
        List<TheaterResponseDto> theaterResponseDtos = new ArrayList<>();
        result.setHeThongRapChieu(theaterResponseDtos);
        List<Theater> theaters = theaterRepository.findByMovieId(movieId);
        theaters.forEach(e -> {
            TheaterResponseDto dto = scheduleUltill.convertToTheaterResponseDto(e);
            theaterResponseDtos.add(dto);
            List<CinemaResponseDto> cinemaResponseDtos = new ArrayList<>();
            dto.setCumRapChieu(cinemaResponseDtos);
            List<Cinema> cinemas = cinemaRepository.findByMovieId(movieId);
            cinemas.forEach(cinema -> {
                CinemaResponseDto cinemaResponseDto = scheduleUltill.convertToCinemaResponseDto(cinema);
                cinemaResponseDtos.add(cinemaResponseDto);
                List<ScheduleMovieResponseDto> scheduleMovieResponseDtos = new ArrayList<>();
                cinemaResponseDto.setLichChieuPhim(scheduleMovieResponseDtos);
                List<Schedule> schedules = scheduleRepository.findByMovieIdAndCinemaId(movieId, cinema.getId());
                schedules.forEach(schedule -> scheduleMovieResponseDtos.add(scheduleUltill.convertToScheduleMovieDto(schedule)));
            });
        });


        return new TKResponse<>(result);
    }

    @Override
    public TKResponse<ScheduleSeatDto> findListSeat(long maLichChieu){
        Schedule schedule = scheduleRepository.findById(maLichChieu).orElse(null);
        if(schedule == null)
            return new TKResponse<>(ResponseStatus.ID_NOT_EXIST);

        ScheduleRoomDto scheduleRoomDto = new ScheduleRoomDto(schedule);
        List<SeatResponseDto> seatResponseDtos = seatRepository.getByMaLichChieu(maLichChieu);
        seatResponseDtos.forEach(e -> e.setGiaVe(schedule.getGiaVe()));

        return new TKResponse<>(new ScheduleSeatDto(scheduleRoomDto, seatResponseDtos));
    }
}
