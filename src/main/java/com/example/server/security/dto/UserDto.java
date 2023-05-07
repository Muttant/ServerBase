package com.example.server.security.dto;

import com.example.server.security.entity.User;
import lombok.*;
import org.springframework.util.CollectionUtils;

import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class UserDto{
    private Long id;
    private String fullName;
    private String username;
    private String email;
    private String imagePath;
    private String maLoaiNguoiDung;
    private Boolean active;
    private String codeSMS;
    private String oldPassword;
    private String password;
    private String confirmPassword;
    private Long sumScore;
    private String phone;

    public UserDto(Long id, String fullName, String imagePath, Long sumScore) {
        this.id = id;
        this.fullName = fullName;
        this.imagePath = imagePath;
        this.sumScore = sumScore == null ? 0 : sumScore;
    }

    public UserDto(User entity){
        if (null != entity) {
            this.id = entity.getId();
            this.email = entity.getEmail();
            this.fullName = entity.getFullName();
            this.maLoaiNguoiDung = entity.getRoles().get(0).getName();
            this.username = entity.getUsername();
            this.password = entity.getPassword();
            this.phone = entity.getPhone();
        }
    }
}
