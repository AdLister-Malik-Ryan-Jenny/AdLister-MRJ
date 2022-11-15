package com.codeup.adlister.util;

public class Validate {
    private String username;
    private String newPassword;
    private String confirmPassword;
    private String password;

    public Validate(String username, String newPassword, String confirmPassword) {
        this.username = username;
        this.newPassword = newPassword;
        this.confirmPassword = confirmPassword;
    }

    public boolean newPasswordValidation() {
        return newPassword.equals(confirmPassword);
    }

    public void setPassword(String password) {
        if (newPasswordValidation()) {
            this.password = newPassword;
        } else {
            this.password = null;
        }
    }

    boolean
}
