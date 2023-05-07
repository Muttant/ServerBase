package com.example.server.api.dto.response;

import com.example.server.security.dto.BaseObjectDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BannerResponseDto extends BaseObjectDto {
    private String hinhAnh; // hinh anh banner
    private String trailer;
    private String tenPhim;
    private String biDanh;
    private long maPhim;
}
