package com.codeup.adlister.controllers;

import com.codeup.adlister.util.Validate;

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
        String confirmPassword = request.getParameter("confirm_password");
        String confirm = request.getParameter("confirm");

        Validate validate = new Validate(username, newPassword, confirmPassword);

        if (validate.updateUser()) {
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/index");
        }
        if (validate.deleteUser(confirm)) {
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/index");
        }


    }

}
