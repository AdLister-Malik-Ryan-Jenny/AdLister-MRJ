package com.codeup.adlister.util;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PasswordValidate {
    long id;
    String username;
    String email;
    String currentPassword;
    String newPassword;
    String passwordConfirmation;
    String sessionPassword;
    String confirm;

    public PasswordValidate(long id, String username, String email, String currentPassword, String newPassword, String passwordConfirmation, String sessionPassword, String confirm) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.currentPassword = currentPassword;
        this.newPassword = newPassword;
        this.passwordConfirmation = passwordConfirmation;
        this.sessionPassword = sessionPassword;
        this.confirm = confirm;
    }

    public void changePassword(long id, String username, String email, String currentPassword, String newPassword, String passwordConfirmation, String sessionPassword, String confirm){
        boolean validAttempt = Password.check(currentPassword, sessionPassword);
        if (! newPassword.isEmpty() && newPassword.equals(passwordConfirmation)) currentPassword = newPassword;
        if (validAttempt) {
            User user = new User(id, username, email, Password.hash(currentPassword));
            DaoFactory.getUsersDao().updateUser(user);
            response.sendRedirect("/profile");
        } else {
            //commit
            response.sendRedirect("/index");
        }
    }
}
