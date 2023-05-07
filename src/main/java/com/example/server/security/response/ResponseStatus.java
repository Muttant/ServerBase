package com.example.server.security.response;

public enum ResponseStatus {
    SUCCESS(200, "Success"),
    BAD_REQUEST(400, "Bad Request"),
    FILE_ERROR(400, "File gửi lên sai"),

    FORBIDDEN(403, "Access Denied"),

    ID_IS_NULL(400_001, "Id is null"),
    ID_NOT_EXIST(400_002, "Id not exist"),
    ID_EXIST(400_003, "Id already exists"),
    OBJECT_IS_EMPTY(400_003, "Object is empty"),
    REFRESH_TOKEN_NOT_ACCESS(400_006, "Refresh token is not access"),
    LOGIN_FAIL(400_007, "Login fail"),
    REGISTER_ACCOUNT_BY_TOKEN_FIREBASE(400_008, "Register account by token firebase"),
    MOVIE_NAME_IS_EMPTY(400_009, "Movie name is empty"),
    ALIASES_IS_EMPTY(400_010, "Aliases is empty"),
    TRAILER_URL_IS_EMPTY(400_011, "Trailer url is empty"),

    MOVIE_IMAGE_IS_EMPTY(400_012, "Image is empty"),

    DESCRIPTION_IS_EMPTY(400_013, "Description is empty"),
    RELEASE_DATE_IS_EMPTY(400_014, "Release_date_is_empty"),
    CATEGORIES_IS_EMPTY(400_015, "Categories_is_empty"),
    DIRECTOR_IS_EMPTY(400_016, "Description is empty"),
    ACTOR_IS_EMPTY(400_017, "Actor_is_empty"),
    RATED_IS_EMPTY(400_018, "Rated_is_empty"),
    DURATION_IS_EMPTY(400_018, "Duration_is_empty"),


    THEATER_NAME_IS_EMPTY(400_020, "Theater_name_is_empty"),

    THEATER_LOGO_IS_EMPTY(400_018, "Theater_logo_is_empty"),

    NAME_IS_EMPTY(420_01, "Name is empty"),
    NAME_IS_EXIST(420_02, "Name is exist"),
    USERNAME_IS_EMPTY(420_06, "Username is empty"),
    USERNAME_IS_EXIST(420_07, "Username is exist"),
    USERNAME_IS_NOT_EXIST(420_08, "Username is not exist"),
    EMAIL_IS_EMPTY(420_09, "Email is empty"),
    EMAIL_IS_WRONG_FORMAT(420_10, "wrong email format"),
    PASSWORD_IS_EMPTY(420_11, "Password is empty"),
    PASSWORD_IS_WRONG_FORMAT(420_12, "wrong password format "),
    ROLE_IS_EMPTY(420_13, "Role is empty"),
    ROLE_NOT_EXIST(420_14, "Role not exist"),
    CODE_SMS_IS_EMPTY(420_15, "Verify code is empty"),
    CODE_SMS_IS_NOT_EXIST(420_16, "Verify code is not exist"),
    CODE_SMS_INVALID(420_17, "Verify code invalid"),
    USER_NOT_FOUND(420_18, "User not found"),
    CONFIRM_PASSWORD_IS_ERROR(420_19, "Confirm Password is error"),
    SENT_EMAIL_TO_YOU(420_20, "Sent 2 emails to you"),
    EMAIL_IS_EXIST(420_21, "Email is exist"),


    DATA_IS_EMPTY(421, "Data is empty"),
    PASSWORD_IS_ERROR(422, "Password is error"),
    TOKEN_IS_EXPIRED(423, "Token is expired"),
    IS_NOT_TOKEN(424, "This is not token"),


    SERVER_ERROR_WHEN_DELETE(500_001,"Error while deleteById"),

    SERVER_ERROR_WHEN_SAVE(500_001,"Error while save"),

    SERVER_ERROR_WHEN_UPDATE(500_001,"Error while updateInfo"),
            ;

    private final int code;
    private final String message;

    ResponseStatus(int code, String message) {
        this.code = code;
        this.message = message;
    }

    public int getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }
    }
