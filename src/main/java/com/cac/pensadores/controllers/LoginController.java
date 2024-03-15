package com.cac.pensadores.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;

@WebServlet(name = "login", value = "/login")
public class LoginController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        String umail = request.getParameter("email");
        String upwd = request.getParameter("contrasenia");
        HttpSession session = request.getSession();
        RequestDispatcher disp = null ;


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumnos?useSSL=false", "root", "ale3286");
            final String QUERY = "SELECT * FROM usuario where email = ? and contrasenia = ?";
            PreparedStatement ps = con.prepareStatement(QUERY);
            ps.setString(1, umail);
            ps.setString(2, upwd);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                session.setAttribute("email", rs.getString("email"));
                session.setAttribute("nombre", rs.getString("nombre"));
                disp = request.getRequestDispatcher("index.jsp");
            } else {
                request.setAttribute("status", "failed");
                disp = request.getRequestDispatcher("index.jsp");

            }
            disp.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
