package com.example.server.security.entity;

import lombok.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.time.LocalDateTime;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Table(name = "tbl_verification_codes") // mã xác thực cho cả tạo tài khoản và quên mật khẩu, tạo type để đánh dấu loại mã
public class VerificationCode extends BaseObject {
    @Transient
    private static final long serialVersionUID = 4572951405687566992L;
    @Column(name = "user_id")
    private Long userId;
    private String username;
    private String email;
    @Column(name = "code_sms")
    private String codeSMS;
    private LocalDateTime expired;
    private Integer type;
}
