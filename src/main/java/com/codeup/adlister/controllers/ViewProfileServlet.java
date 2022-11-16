package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import com.codeup.adlister.util.UpdateCredentials;

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
        // output from form
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String newPassword = Password.hash(request.getParameter("newPassword"));
        String confirm_password = Password.hash(request.getParameter("confirm_password"));
        String update = request.getParameter("update");

        // session output
        User user = (User) request.getSession().getAttribute("user");

        // db output
        User user1 = DaoFactory.getUsersDao().findByUsername(user.getUsername());

        // control flow for various methods
        if(update.equals("update")){
            UpdateCredentials updateCredentials = new UpdateCredentials(username, email, password, user.getPassword(), response, user1);
            updateCredentials.UserNameEmail(username, email, password, response, user);
        }else if(update.equals("update_password")){
            UpdateCredentials.PasswordChange(username, email, password, newPassword, confirm_password, response, user1);
        }else if(update.equals("delete")){
            UpdateCredentials.DeleteCredentials(user1, password, confirm_password, response, request);
        }
    }



//        // checks if password entered from form matches db password
//        boolean validAttempt = Password.check(password, user1.getPassword());
//
//
//        if(validAttempt){
//            System.out.println("Success");
//            user1.setEmail(email);
//            user1.setUsername(username);
//            DaoFactory.getUsersDao().updateUser(user1);
//        }else {
//            System.out.println("invalid");
//        }




}
