package com.example.server.api.dto.response;

import com.example.server.api.entity.Seat;
import com.example.server.security.dto.BaseObjectDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SeatResponseDto {
    private long maGhe;
    private String tenGhe;
    private String loaiGhe;
    private String stt;
    private long maRap;
    private int giaVe;
    private boolean daDat;
    private String taiKhoanNguoiDat;

    public SeatResponseDto(Seat seat, String username){
        this.maGhe = seat.getId();
        this.tenGhe = seat.getTenGhe();
        this.loaiGhe = seat.getLoaiGhe();
        this.stt = seat.getSoThuTu();
        this.maRap = seat.getMaRap().getId();
        this.taiKhoanNguoiDat = username;
        this.daDat = username != null;
    }
}
