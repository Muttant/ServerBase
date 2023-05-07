package com.example.server.security.rest;

import com.example.server.security.dto.UserDto;
import com.example.server.security.response.TKResponse;
import com.example.server.security.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/user")
public class UserController {
    private final UserService userService;

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @PostMapping
    public TKResponse<UserDto> saveUser(@RequestBody UserDto userDto) {
        return userService.save(userDto);
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/{username}")
    public TKResponse<UserDto> getByUsername(@PathVariable("username") String username) {
        return userService.getByUsername(username);
    }

    @GetMapping
    public TKResponse<UserDto> getMe() {
        return userService.getMe();
    }

    @PutMapping("/update-full-name/{fullName}")
    public TKResponse<Boolean> updateFullName(@PathVariable("fullName") String fullName){
        return userService.updateFullName(fullName);
    }
}
