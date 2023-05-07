package com.example.server.api.entity;

import com.example.server.security.entity.BaseObject;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "tbl_banner")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Banner extends BaseObject {
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "maBanner", referencedColumnName = "id")
    private Movie movie;
    private String hinhAnhUrl;
}
