package com.example.server.api.dto.response;

import com.example.server.api.entity.Movie;
import com.example.server.security.dto.BaseObjectDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MovieResponseDto extends BaseObjectDto {
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
    private boolean isScheduled;
    private List<BannerResponseDto> banners;
    private List<ScheduleMovieResponseDto> lstLichChieuTheoPhim;

    public MovieResponseDto(Movie entity) {
        if (entity == null)
            return;

        this.tenPhim = entity.getTenPhim();
        this.hinhAnh = entity.getHinhAnhUrl();
    }
}
