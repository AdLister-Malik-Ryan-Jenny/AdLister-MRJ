package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import com.codeup.adlister.util.PasswordValidation;
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
        String passwordConfirmation = request.getParameter("confirm_password");
        String sessionPassword = DaoFactory.getUsersDao().findByUsername(username).getPassword();
        String confirm = request.getParameter("confirm");
        boolean validAttempt = Password.check(currentPassword, sessionPassword);
        boolean confirmDelete = confirm.equals("confirm");
        String delete = request.getParameter("delete");
        String update = request.getParameter("update");

        // valid attempt must be before setting value of currentPassword to a newPassword


//Todo - both functionalities work if one (or the other) is commented out. When both in method an error occurs related to confirm being null.
        PasswordValidation pv = new PasswordValidation(id, username, email, currentPassword, newPassword, passwordConfirmation, sessionPassword, confirm);

        if(delete.equals("true")){
            pv.deleteCredentials(username, currentPassword, sessionPassword, confirm);
        }
        if(update.equals("true")){
            pv.changeCredentials(username, email, currentPassword, newPassword, passwordConfirmation, sessionPassword);
        }


        // TODO: 11/15/22 Update else redirect to appropriate redirect or error message
    }
}
