package com.example.server.api.dto.request;

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
public class MovieRequestDto extends BaseObjectDto {
    private String tenPhim;
    private String biDanh;
    private String trailerUrl;
    private String hinhAnhUrl;
    private String moTa;
    private LocalDate ngayKhoiChieu;
    private int danhGia;
    private String theLoai;
    private String daoDien;
    private String dienVien;
    private boolean isShow;
    private String rated;
    private byte thoiLuongPhim;
    private List<BannerRequestDto> banners;
}
