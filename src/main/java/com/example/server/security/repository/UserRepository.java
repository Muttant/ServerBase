package com.example.server.security.repository;

import com.example.server.api.dto.response.UserInfoResponseDto;
import com.example.server.security.dto.UserDto;
import com.example.server.security.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
    Boolean existsByUsername(String username);
    Boolean existsByEmail(String email);
    User findByEmail(String email);
    @Query(value = "select new com.example.server.api.dto.response.UserInfoResponseDto(u) from User u")
    List<UserInfoResponseDto> getAllBy();
    @Modifying
    void deleteByUsername(String username);
}
