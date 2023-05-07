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
@Table(name = "tbl_comment")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Comment extends BaseObject {
    private String avtId;
    private String fullName;
    private float point;
    private String post;
    private short likes;
    @ManyToOne
    @JoinColumn(name = "maPhim", referencedColumnName = "id")
    private Movie movie;
    private boolean dataTest;
    private LocalDateTime createAt;
    @ManyToOne
    @JoinColumn(name = "taiKhoan", referencedColumnName = "id")
    private User user;
}
