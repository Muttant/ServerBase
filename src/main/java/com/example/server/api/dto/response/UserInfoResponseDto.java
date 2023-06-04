package com.example.server.api.dto.response;

import com.example.server.security.entity.User;
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

    public UserInfoResponseDto(User entity) {
        if (entity == null)
            return;
        this.setEmail(entity.getEmail());
        this.setSoDT(entity.getPhone());
        this.setHoTen(entity.getFullName());
        this.setMaNhom("GP09");
        this.setMatKhau(entity.getPassword());
        this.setTaiKhoan(entity.getUsername());
        this.setLoaiNguoiDung(entity.getRoles().get(0).getName());
    }
}
