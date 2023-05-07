package com.example.server.api.dto.response;

import com.example.server.security.dto.BaseObjectDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MovieResponseDto extends BaseObjectDto{
    private long maPhim;
    private String tenPhim;
    private String biDanh;
    private String trailer;
    private String hinhAnh;
    private String moTa;
    private String ngayKhoiChieu;
    private int danhGia;
    private String theLoai;
    private String daoDien;
    private String dienVien;
    private boolean isShow;
    private String rated;
    private byte thoiLuong;
    private List<BannerResponseDto> banners;
}
