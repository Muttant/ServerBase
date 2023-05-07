package com.example.server.api.entity;

import com.example.server.security.entity.BaseObject;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;

@Entity
@Table(name = "tbl_theater")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Theater extends BaseObject {
    private String tenHeThongRap;
    private String logoUrl;
    @OneToMany(mappedBy = "maHeThongRap")
    private List<Cinema> cinemas;
}
