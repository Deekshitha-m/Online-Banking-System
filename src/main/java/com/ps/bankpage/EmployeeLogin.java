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

@WebServlet("/emplogin")
public class EmployeeLogin extends HttpServlet{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String empid=req.getParameter("id");
		String Pass=req.getParameter("password");
		long EMP=Long.parseLong(empid);
		int PASS=Integer.parseInt(Pass);
		String url="jdbc:mysql://localhost:3306/bank";
		String user="root";
		String pss="tiger";
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		PrintWriter out=resp.getWriter();
		String s="Select * from bank.emp where EID=? and PASSWORD=?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,user,pss);
			ps=con.prepareStatement(s);
			ps.setLong(1, EMP);
			ps.setInt(2,PASS);
			rs=ps.executeQuery();
			if(rs.next()) {
				String name=rs.getString(2);
				req.setAttribute("account", empid);
				req.setAttribute("name", name);
				RequestDispatcher rd=req.getRequestDispatcher("Employeehome.jsp");
				rd.forward(req, resp);
			//	resp.setContentType("text/html");
			//	resp.sendRedirect("https://www.google.com/search?q="+name);
			}else {
				req.setAttribute("error","Invalid Employee ID or Password! Please retry.");
				RequestDispatcher rd=req.getRequestDispatcher("Valid.jsp");
				rd.forward(req, resp);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (NumberFormatException ne) {
			 req.setAttribute("error","Please enter valid Employee ID or Password");
				RequestDispatcher rd=req.getRequestDispatcher("Valid.jsp");
				rd.forward(req, resp);
			}
	}

}





//background-image:url("pictures/loginback.jpg");