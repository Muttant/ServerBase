package com.example.server.api.rest;

import com.example.server.api.dto.request.BannerRequestDto;
import com.example.server.api.dto.response.BannerResponseDto;
import com.example.server.api.service.BannerService;
import com.example.server.security.response.TKResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequestMapping("/api/banner")
@RequiredArgsConstructor
public class BannerController {
    private final BannerService bannerService;

    @GetMapping("/{bannerId}")
    public TKResponse<BannerResponseDto> findById(@PathVariable("bannerId") UUID bannerId){
        return bannerService.findById(bannerId);
    }

    @PostMapping
    public TKResponse<BannerResponseDto> save(@RequestBody BannerRequestDto dto){
        return bannerService.save(dto);
    }

    @PutMapping("/{bannerId}")
    public TKResponse<BannerResponseDto> update(@PathVariable("bannerId") UUID bannerId, @RequestBody BannerRequestDto dto){
        return bannerService.update(bannerId, dto);
    }

    @DeleteMapping("/{bannerId}")
    public TKResponse<Boolean> deleteById(@PathVariable("bannerId") UUID bannerId){
        return bannerService.deleteById(bannerId);
    }
}
