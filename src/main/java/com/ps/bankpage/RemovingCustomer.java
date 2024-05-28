package com.ps.bankpage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/remove")
public class RemovingCustomer extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp ) throws ServletException,IOException
	{
		String acc=req.getParameter("nm");
		String url="jdbc:mysql://localhost:3306/bank";
		String user="root";
		String pass="tiger";
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String query1="DELETE FROM BANK.CUSTOMER WHERE ACCNO=?";
		PrintWriter out= resp.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,user,pass);
			ps=con.prepareStatement(query1);
			int accno=Integer.parseInt(acc);
			ps.setInt(1, accno);
			int res=ps.executeUpdate();
			if(res>0) {
				RequestDispatcher rd=req.getRequestDispatcher("Successful.jsp");
				rd.forward(req, resp);
			}
			else {
				req.setAttribute("error","Invalid Account Number. Please retry.");
				RequestDispatcher rd=req.getRequestDispatcher("removeCustomer.jsp");
				rd.forward(req, resp);
			}
		}
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				if(ps!=null)
					ps.close();
				if(con!=null)
					con.close();
			}
			catch ( SQLException e) {
				e.printStackTrace();
			}
		}
		}
	}
