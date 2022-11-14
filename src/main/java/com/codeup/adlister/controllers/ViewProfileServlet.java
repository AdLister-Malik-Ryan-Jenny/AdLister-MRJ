package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");
        String passwordConfirmation = request.getParameter("confirm_password");
        long id = Long.parseLong(request.getParameter("id"));
        String updatePassword = null;

        // validate input
        boolean inputEmptyFields = username.isEmpty()
                || email.isEmpty()
                || currentPassword.isEmpty();

//todo: Error message
        if (inputEmptyFields) {
            response.sendRedirect("/profile");
            return;
        }

        boolean changePassword = ! newPassword.isEmpty();
        boolean pwMatch = (newPassword.equals(passwordConfirmation));

        if (changePassword && pwMatch) {
            updatePassword = newPassword;
        } else {
            updatePassword = currentPassword;
        }
//        HttpSession session = request.getSession();
//        String loggedInPW = session.user.username;
//        boolean validAttempt = Password.check(currentPassword, user.getPassword());
//
//        if (validAttempt) {
//            request.getSession().setAttribute("user", user);
//            response.sendRedirect("/profile");
//        } else {
//            response.sendRedirect("/login");
//        }

        User user = new User(id, username, email, updatePassword);
        DaoFactory.getUsersDao().updateUser(user);
        System.out.println(user);
        response.sendRedirect("/profile");
    }
}
