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
//    todo if field = null set value to sessionScope user
        long id = Long.parseLong(request.getParameter("id"));
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");
        String passwordConfirmation = request.getParameter("confirm_password");
//        String sessionPassword = DaoFactory.getUsersDao().findByUsername(username).getPassword();
//        System.out.println(sessionPassword);
//// TODO: 11/14/22 Currently this is not working to update the pw field. It will update the email and username
        if (! newPassword.isEmpty() && newPassword.equals(passwordConfirmation)) currentPassword = newPassword;
        boolean validAttempt = true;
        if (validAttempt) {
            User user = new User(id, username, email, currentPassword);
            DaoFactory.getUsersDao().updateUser(user);
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/profile");
        }



    }
}
