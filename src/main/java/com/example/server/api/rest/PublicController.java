package com.example.server.api.rest;

import com.example.server.api.dto.response.UserInfoResponseDto;
import com.example.server.api.service.UserService;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController(value = "PublicController2")
@RequestMapping("/api/QuanLyNguoiDung")
@RequiredArgsConstructor
public class PublicController {
    private final UserService userService;

    @PostMapping("/ThongTinTaiKhoan")
    public TKResponse<UserInfoResponseDto> getUserInfo(@RequestBody UserInfoResponseDto dto){
        return userService.getUserInfo(dto);
    }

    @GetMapping("/LayDanhSachNguoiDung")
    public TKResponse<List<UserInfoResponseDto>> getAll(){
        return userService.getAll();
    }

    @PutMapping("/CapNhatThongTinNguoiDung")
    public TKResponse<UserInfoResponseDto> update(@RequestBody UserInfoResponseDto dto){
        return userService.update(dto);
    }

    @DeleteMapping("/XoaNguoiDung")
    public void deleteByUsername(@RequestParam String TaiKhoan){
        userService.deleteByUsername(TaiKhoan);
    }
}
