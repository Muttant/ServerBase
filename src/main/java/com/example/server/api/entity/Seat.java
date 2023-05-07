package com.example.server.api.entity;

import com.example.server.security.entity.BaseObject;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "tbl_seat")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Seat extends BaseObject {
    private String tenGhe;
    private String loaiGhe;
    private String soThuTu;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "maRap", referencedColumnName = "id")
    private Room maRap;
}
