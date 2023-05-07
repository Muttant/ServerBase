package com.example.server.api.dto.request;

import com.example.server.security.dto.BaseObjectDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BookTicketsRequestDto extends BaseObjectDto {
    private List<TicketRequestDto> danhSachVe;
    private long maLichChieu;
    private String taiKhoanNguoiDung;
}
