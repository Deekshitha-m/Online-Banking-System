package com.ps.bankpage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/lnn")
public class CustomerLogin extends HttpServlet{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String AccNo=req.getParameter("accno");
		String Pass=req.getParameter("pass");
		long AccNmr=Long.parseLong(AccNo);
		int password=Integer.parseInt(Pass);
		String url="jdbc:mysql://localhost:3306/bank";
		String user="root";
		String pss="tiger";
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		PrintWriter out=resp.getWriter();
		String s="Select * from bank.customer where Accno=? and Pin=?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,user,pss);
			ps=con.prepareStatement(s);
			ps.setLong(1, AccNmr);
			ps.setInt(2,password);
			rs=ps.executeQuery();
			if(rs.next()) {
				String name=rs.getString(2);
				req.setAttribute("account", AccNo);
				req.setAttribute("name", name);
				RequestDispatcher rd=req.getRequestDispatcher("Customerhome.jsp");
				RequestDispatcher rd1=req.getRequestDispatcher("checkBalance.jsp");
				rd.forward(req, resp);
				rd1.forward(req, resp);
			//	resp.setContentType("text/html");
			//	resp.sendRedirect("https://www.google.com/search?q="+name);
			}else {
				req.setAttribute("error","Invalid Account Number or Pin! Please retry.");
				RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
				rd.forward(req, resp);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (NumberFormatException ne) {
			 req.setAttribute("error","Please enter valid Account Number or Pin");
				RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
				rd.forward(req, resp);
			}
	}

}