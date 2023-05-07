package com.example.server.api.dto.response;

import com.example.server.api.entity.Cinema;
import com.example.server.api.entity.Movie;
import com.example.server.api.entity.Room;
import com.example.server.api.entity.Schedule;
import com.example.server.security.dto.BaseObjectDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ScheduleRoomDto {
    private long maLichChieu;
    private String tenCumRap;
    private String tenRap;
    private String diaChi;
    private String tenPhim;
    private String hinhAnh;
    private String ngayChieu;
    private String gioChieu;


    public ScheduleRoomDto(Schedule schedule) {
        this.setMaLichChieu(schedule.getId());
        Room room = schedule.getRoom();
        Cinema cinema = room.getCinema();
        this.setTenCumRap(cinema.getTenCumRap());
        this.setTenRap(room.getTenRap());
        this.setDiaChi(cinema.getDiaChi());
        Movie movie = schedule.getMovie();
        this.setTenPhim(movie.getTenPhim());
        this.setHinhAnh(movie.getHinhAnhUrl());
        this.setNgayChieu(schedule.getNgayGioiChieu().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
        this.setGioChieu(schedule.getNgayGioiChieu().format(DateTimeFormatter.ofPattern("HH:mm")));
    }
}
