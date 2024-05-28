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

@WebServlet("/updatecustomer")
public class UpdatingCustomer extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp ) throws ServletException,IOException
	{	
		String name=req.getParameter("nm");
		String phone=req.getParameter("ph");
		String mail=req.getParameter("em");
		String account=req.getParameter("ac");
		String url="jdbc:mysql://localhost:3306/bank";
		String user="root";
		String pass="tiger";
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String query="UPDATE BANK.CUSTOMER SET NAME=?,PHONE=?,EMAIL=? WHERE ACCNO=?";
		PrintWriter out= resp.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,user,pass);
			ps=con.prepareStatement(query);
			ps.setString(1, name);
			long mobile=Long.parseLong(phone);
			ps.setLong(2, mobile);
			ps.setString(3, mail);
			int accountno=Integer.parseInt(account);
			ps.setInt(4, accountno);
			int res=ps.executeUpdate();
			if(res>0) {
				RequestDispatcher rd=req.getRequestDispatcher("Successful.jsp");
				rd.forward(req, resp);
			}
			else {
				req.setAttribute("error","Invalid Account Number! Please retry.");
				RequestDispatcher rd=req.getRequestDispatcher("UpdateCustomer.jsp");
				rd.forward(req, resp);
			}
		} 
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.flush();
			out.close();
			try {
				if(ps!=null)  ps.close();
				if(con!=null) con.close();
			}
			catch(Exception e1){
				e1.printStackTrace();
			}		
		}

}
}