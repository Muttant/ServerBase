package com.example.server.api.entity;

import com.example.server.security.entity.BaseObject;
import com.example.server.security.entity.User;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.time.LocalDateTime;

@Entity
@Table(name = "tbl_ticket")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Ticket extends BaseObject {
    private Integer maVe;
    private int giaVe;
    private LocalDateTime ngayGioDat;
    @ManyToOne
    @JoinColumn(name = "taiKhoan", referencedColumnName = "id")
    private User user;
    @ManyToOne
    @JoinColumn(name = "maGhe", referencedColumnName = "id")
    private Seat seat;
    @ManyToOne
    @JoinColumn(name = "maLichchieu", referencedColumnName = "id")
    private Schedule schedule;
}
