package com.codeup.adlister.util;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.http.HttpServletResponse;

public class PasswordValidation {
    String username;
    String email;
    String currentPassword ;
    String newPassword;
    String passwordConfirmation;
    String sessionPassword;
    String confirm;

    HttpServletResponse response;

    public PasswordValidation(String username, String email, String currentPassword, String newPassword, String passwordConfirmation, String sessionPassword, String confirm) {
        this.username = username;
        this.email = email;
        this.currentPassword = currentPassword;
        this.newPassword = newPassword;
        this.passwordConfirmation = passwordConfirmation;
        this.sessionPassword = sessionPassword;
        this.confirm = confirm;
    }


//    if (! newPassword.isEmpty() && newPassword.equals(passwordConfirmation)) currentPassword = newPassword;
//        if (validAttempt) {
//        User user = new User(username, email, Password.hash(currentPassword));
//        DaoFactory.getUsersDao().updateUser(user);
//        response.sendRedirect("/profile");
//    } else {
//        response.sendRedirect("/index");
//    }
//        if (validAttempt && confirm.equals("confirm")) {
//        DaoFactory.getUsersDao().deleteUser(username);
//        request.getSession().removeAttribute("user");
//        request.getSession().invalidate();
//        response.sendRedirect("/login");
//    } else {
//        response.sendRedirect("/index");
//    }

}
