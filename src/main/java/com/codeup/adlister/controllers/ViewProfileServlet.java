package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

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
        long id = Long.parseLong(request.getParameter("id"));
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");
        String passwordConfirmation = request.getParameter("confirm_password");
        String sessionPassword = DaoFactory.getUsersDao().findByUsername(username).getPassword();
        String confirm = request.getParameter("confirm");

//        boolean confirmDelete = confirm.equals("confirm");

        // valid attempt must be before setting value of currentPassword to a newPassword
        boolean validAttempt = Password.check(currentPassword, sessionPassword);

//        if (validAttempt && confirmDelete) {
//            DaoFactory.getUsersDao().deleteUser(username);
//            response.sendRedirect("/profile");
//        } else {
//            response.sendRedirect("/index");
//        }

        if (! newPassword.isEmpty() && newPassword.equals(passwordConfirmation)) currentPassword = newPassword;
        if (validAttempt) {
            User user = new User(id, username, email, Password.hash(currentPassword));
            DaoFactory.getUsersDao().updateUser(user);
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/index");
        }

        // TODO: 11/15/22 Update else redirect to appropriate redirect or error message
    }
}
