package com.codeup.adlister.util;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class UpdateCredentials {
    private String username;
    private String email;
    private String password;
    private String sessionPw;
    HttpServletResponse response;
    User user;

    public UpdateCredentials(String username, String email, String password, String sessionPw, HttpServletResponse response, User user) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.response = response;
        this.user = user;
    }

    public void UserNameEmail (String username, String email, String password, HttpServletResponse response, User user) {
        boolean validAttempt = Password.check(password, user.getPassword());
        if (validAttempt) {
            System.out.println("Success");
            user.setEmail(email);
            user.setUsername(username);
            DaoFactory.getUsersDao().updateUser(user);
            try {
                response.sendRedirect("/profile");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } else {
            System.out.println("invalid");
            try {
                response.sendRedirect("/index");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
    public static void PasswordChange(String username, String email, String password, String new_password, String confirm_password, HttpServletResponse response, User user){
        boolean validAttempt = Password.check(password, user.getPassword());
        boolean passwordMatch = Password.check(new_password, confirm_password);
        if(validAttempt && passwordMatch){
            user.setEmail(email);
            user.setPassword(new_password);
            user.setUsername(username);
            DaoFactory.getUsersDao().updateUser(user);
            try {
                response.sendRedirect("/profile");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }else {
            try {
                response.sendRedirect("/");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
    public static void DeleteCredentials(User user, String password, String confirm_password, HttpServletResponse response, HttpServletRequest request){
        boolean validAttempt = Password.check(password, user.getPassword());
        boolean passwordMatch = Password.check(password, confirm_password);
                if(validAttempt && passwordMatch){
                    DaoFactory.getUsersDao().deleteUser(user.getUsername());
                }else {
                    try {
                        request.setAttribute("message", "invalid");
                        response.sendRedirect("/profile");

                    } catch (IOException e) {
                        throw new RuntimeException(e);
                    }
                }

    }

}
