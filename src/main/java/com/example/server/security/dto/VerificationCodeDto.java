package com.example.server.security.dto;

import com.example.server.security.entity.VerificationCode;
import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class VerificationCodeDto extends BaseObjectDto {
    private Long userId;
    private String username;
    private String email;
    private String codeSMS;
    private LocalDateTime expired;
    private Integer type;

    public VerificationCodeDto(VerificationCode entity) {
        this.userId = entity.getUserId();
        this.username = entity.getUsername();
        this.email = entity.getEmail();
        this.codeSMS = entity.getCodeSMS();
        this.expired = entity.getExpired();
        this.type = entity.getType();
    }
}
