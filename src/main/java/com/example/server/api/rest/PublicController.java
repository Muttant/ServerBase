package com.example.server.api.rest;

import com.example.server.api.dto.response.UserInfoResponseDto;
import com.example.server.api.service.UserService;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController(value = "PublicController2")
@RequestMapping("/api/QuanLyNguoiDung")
@RequiredArgsConstructor
public class PublicController {
    private final UserService userService;

    @PostMapping("/ThongTinTaiKhoan")
    public TKResponse<UserInfoResponseDto> getUserInfo(@RequestBody UserInfoResponseDto dto){
        return userService.getUserInfo(dto);
    }
}
