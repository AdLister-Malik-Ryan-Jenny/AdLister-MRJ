package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdSearchServlet", urlPatterns = "/search")

public class AdSearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyword = request.getParameter("search");
        request.setAttribute("searchResults", DaoFactory.getAdsDao().findAdByKeyword(keyword));
        request.getRequestDispatcher("/WEB-INF/ads/searchResults.jsp")
                .forward(request, response);
    }



}
