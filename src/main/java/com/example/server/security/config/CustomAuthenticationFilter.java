package com.example.server.security.config;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;

import com.example.server.security.constant.Constants;
import com.example.server.security.dto.TokenDto;
import com.example.server.security.entity.User;
import com.example.server.security.response.TKResponse;
import com.example.server.security.response.ResponseStatus;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.MediaType;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.stream.Collectors;

public class CustomAuthenticationFilter extends UsernamePasswordAuthenticationFilter {
    private AuthenticationManager authenticationManager;

    public CustomAuthenticationFilter(AuthenticationManager authenticationManager){
        this.authenticationManager = authenticationManager;
    }

    @Override
    public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response) throws AuthenticationException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(username, password);
        return authenticationManager.authenticate(authenticationToken);
    }

    @Override
    protected void successfulAuthentication(HttpServletRequest request, HttpServletResponse response, FilterChain chain, Authentication authentication) throws IOException, ServletException {
        User user = (User) authentication.getPrincipal();
        Algorithm algorithm = Algorithm.HMAC256(Constants.SECRET_KEY.getBytes());

        String access_token = JWT.create()
                .withSubject(user.getUsername())
                .withClaim("id",user.getId())
                .withExpiresAt(new Date(System.currentTimeMillis() + Constants.ACCESS_TOKEN_TIME))
                .withIssuer(request.getRequestURL().toString())
                .withClaim("roles", user.getAuthorities().stream().map(GrantedAuthority::getAuthority).collect(Collectors.toList()))
                .sign(algorithm);

        String refresh_token = JWT.create()
                .withSubject(user.getUsername())
                .withExpiresAt(new Date(System.currentTimeMillis() + Constants.REFRESH_TOKEN_TIME))
                .withIssuer(request.getRequestURL().toString())
                .sign(algorithm);

        TokenDto tokenDto = new TokenDto(access_token, refresh_token);
        tokenDto.setEmail(user.getEmail());
        tokenDto.setHoTen(user.getFullName());
        tokenDto.setEmail(user.getEmail());
        tokenDto.setMaLoaiNguoiDung("QuanTri");
        tokenDto.setMaNhom("ddd");
        tokenDto.setSoDT("0123456789");
        tokenDto.setTaiKhoan(user.getUsername());
        response.setContentType(MediaType.APPLICATION_JSON_VALUE);
        new ObjectMapper().writeValue(response.getOutputStream(), tokenDto);
    }

    @Override
    protected void unsuccessfulAuthentication(HttpServletRequest request, HttpServletResponse response, AuthenticationException failed) throws IOException, ServletException {
        TokenDto tokenDto = new TokenDto(null, null);
        TKResponse TKResponse = new TKResponse(tokenDto, ResponseStatus.LOGIN_FAIL);
        response.setContentType(MediaType.APPLICATION_JSON_VALUE);
//        response.setStatus(HttpServletResponse.SC_FORBIDDEN);
        new ObjectMapper().writeValue(response.getOutputStream(), TKResponse);
    }
}
