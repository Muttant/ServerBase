package com.example.server.api.entity;

import com.example.server.security.entity.BaseObject;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "tbl_movie")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Movie extends BaseObject {
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
    @OneToMany(mappedBy = "movie")
    private List<Banner> banners;
}
