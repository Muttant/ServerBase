package com.example.server.api.dto.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class UserInfoResponseDto {
    private String email;
    private String hoTen;
    private String loaiNguoiDung;
    private String maNhom;
    private String matKhau;
    private String soDT;
    private String taiKhoan;
    private List<TicketResponseDto> thongTinDatVe;
}
