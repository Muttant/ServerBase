package com.example.server.security.response;


import com.example.server.api.exception.TKException;

public class TKResponse<T> {
    private int code;
    private String message;
    private T data;
    private int total;

    public TKResponse() {
        this.code = ResponseStatus.SUCCESS.getCode();
        this.message = ResponseStatus.SUCCESS.getMessage();
    }

    public TKResponse(TKException e){
        this.code = e.getStatus().getCode();
        this.message = e.getStatus().getMessage();
    }

    public TKResponse(int code, String message, T data, int total) {
        this.code = code;
        this.message = message;
        this.data = data;
        this.total = total;
    }

    public TKResponse(T data, int total) {
        this.data = data;
        this.code = ResponseStatus.SUCCESS.getCode();
        this.message = ResponseStatus.SUCCESS.getMessage();
        this.total = total;
    }

    public TKResponse(T data) {
        this.data = data;
        this.code = ResponseStatus.SUCCESS.getCode();
        this.message = ResponseStatus.SUCCESS.getMessage();
    }

    public TKResponse(T data, ResponseStatus status) {
        this.data = data;
        this.code = status.getCode();
        this.message = status.getMessage();
    }

    public TKResponse(ResponseStatus status){
        this.code = status.getCode();
        this.message = status.getMessage();
    }

    public TKResponse(String message) {
        this.message = message;
    }

    public TKResponse(int code, String message) {
        this.code = code;
        this.message = message;
    }

    public void setResponseStatus(ResponseStatus status) {
        this.code = status.getCode();
        this.message = status.getMessage();
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
}
