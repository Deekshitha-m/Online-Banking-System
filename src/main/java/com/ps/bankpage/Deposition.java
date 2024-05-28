package com.ps.bankpage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deposit")
public class Deposition extends HttpServlet{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String Account=req.getParameter("ac");
		String amt=req.getParameter("am");
		String pin=req.getParameter("pn");
		String url="jdbc:mysql://localhost:3306/bank";
		String user="root";
		String pss="tiger";
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String s="UPDATE BANK.CUSTOMER SET BALANCE=BALANCE+? WHERE ACCNO=? AND PIN=?";
		 PrintWriter out=resp.getWriter();
		 try { 
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection(url,user,pss);
				ps=con.prepareStatement(s);
				long acc=Long.parseLong(Account);
				double amount=Double.parseDouble(amt);
				int Pin=Integer.parseInt(pin);
				ps.setDouble(1, amount);
				ps.setLong(2, acc);
				ps.setInt(3, Pin);
					int res=ps.executeUpdate();
					if(res>0) {
						req.setAttribute("str", "Amount Deposited Successfully");
						RequestDispatcher rd=req.getRequestDispatcher("DepositAmount.jsp");
						rd.forward(req, resp);
					}
					else {
						req.setAttribute("error","Invalid Account Number or Pin! Please retry.");
						RequestDispatcher rd=req.getRequestDispatcher("DepositAmount.jsp");
						rd.forward(req, resp);
					}	
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			
		}

	}
