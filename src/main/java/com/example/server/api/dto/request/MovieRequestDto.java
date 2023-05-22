package com.example.server.api.dto.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MovieRequestDto {
    private String tenPhim;
    private String biDanh;
    private String trailer;
    private String hinhAnh;
    private String moTa;
    private String ngayKhoiChieu;
    private int danhGia;
    private long maPhim;
    private String theLoai;
    private String daoDien;
    private String dienVien;
    private boolean isShow;
    private String rated;
    private byte thoiLuongPhim;
    private List<BannerRequestDto> banners;
}
