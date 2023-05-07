package com.example.server.api.exception;

import com.example.server.security.response.ResponseStatus;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class TKException extends Exception{
    private ResponseStatus status;
}
