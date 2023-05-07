package com.example.server.api.entity;

import com.example.server.security.entity.BaseObject;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "tbl_room")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Room extends BaseObject {
    private String tenRap;
    @OneToMany(mappedBy = "maRap")
    private List<Seat> seats;
    @ManyToOne
    @JoinColumn(name = "maCumRap", referencedColumnName = "id")
    private Cinema cinema;
}
