package com.example.server.security.constant;

import java.nio.file.Paths;

public class Constants {
    public Constants() {
    }

    /*REGEX*/
    public static final String REGEX_EMAIL = "^[a-zA-Z]+[a-zA-Z0-9]*(\\.[a-zA-Z0-9]+)*@{1}[a-zA-Z]+(\\.[a-zA-Z0-9]+)*(\\.[a-zA-Z]{2,})$";

    /*PACKAGE*/
    public static final String PACKAGE_USER_IMAGE = Paths.get("").toAbsolutePath().toString().concat("\\IMAGE\\User\\");
    public static final String SECRET_KEY = "secret";

    public static final long ACCESS_TOKEN_TIME = 60l * 60 * 1000;
    public static final long REFRESH_TOKEN_TIME = 30l * 24 * 60 * 60 * 1000;

    public enum VerificationType {
        REGISTER(1),
        FORGOT_PASSWORD(2),

        ;

        private Integer value;

        private VerificationType(Integer value) {
            this.value = value;
        }

        public Integer getValue() {
            return value;
        }

        public static VerificationType findByValue(Integer value) {
            if (null == value)
                return null;
            VerificationType categoryStatus = null;
            for (VerificationType element : values()) {
                if (element.value.compareTo(value) == 0) {
                    categoryStatus = element;
                    break;
                }
            }
            return categoryStatus;
        }
    }

    public enum LoginType {
        GMAIL(1),
        FIREBASE(2),

        ;

        private Integer value;

        private LoginType(Integer value) {
            this.value = value;
        }

        public Integer getValue() {
            return value;
        }

        public static LoginType findByValue(Integer value) {
            if (null == value)
                return null;
            LoginType loginType = null;
            for (LoginType element : values()) {
                if (element.value.compareTo(value) == 0) {
                    loginType = element;
                    break;
                }
            }
            return loginType;
        }
    }
}
