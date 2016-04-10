package com.util;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


@WebServlet("/online")
public class online extends HttpServlet {
	private static final long serialVersionUID = 1L;
       static Connection con;
    public online() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
            con = DAOConnection.sqlconnection();
            Statement st=con.createStatement();
            String email=request.getParameter("email");
            String subject=request.getParameter("subject");
            String text=request.getParameter("text");
            	st.executeUpdate("insert into onlinehelp values '"+email+"','"+subject+"','"+text+"' ");
            	System.out.println("data inserted");
            	response.sendRedirect("index.jsp");
            
		}catch(Exception e)
		{
			
		}
	}

}
