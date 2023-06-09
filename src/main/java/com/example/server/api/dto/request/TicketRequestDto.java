package com.example.server.api.dto.request;

import com.example.server.security.dto.BaseObjectDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.joda.time.DateTime;

import java.time.LocalDateTime;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class TicketRequestDto extends BaseObjectDto {
    private long maGhe;
    private int giaVe;
    private DateTime ngayGioDat;
    private String maLichChieu;
    private String mataiKhoan;
}
