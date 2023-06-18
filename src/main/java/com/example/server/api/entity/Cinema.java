package com.example.server.api.entity;

import com.example.server.security.entity.BaseObject;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "tbl_cinema")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Cinema extends BaseObject {
    private String tenCumRap;
    private String hinhAnhUrl;
    private String diaChi;
    @ManyToOne
    @JoinColumn(name = "maHeThongRap", referencedColumnName = "id")
    private Theater maHeThongRap;
    private String sdt;
    @OneToMany(mappedBy = "cinema")
    private List<Room> rooms;
}
