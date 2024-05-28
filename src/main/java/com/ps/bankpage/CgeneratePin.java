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

@WebServlet("/Cgeneratepin")
public class CgeneratePin extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp ) throws ServletException,IOException
	{	
	 //   String pin=req.getParameter("np");
		String cpin=req.getParameter("cp");
		String account=req.getParameter("acc");
		String url="jdbc:mysql://localhost:3306/bank";
		String user="root";
		String pass="tiger";
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String query="UPDATE BANK.CUSTOMER SET PIN=? WHERE ACCNO=?";
		PrintWriter out= resp.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,user,pass);
			ps=con.prepareStatement(query);
			int pinn=Integer.parseInt(cpin);
			ps.setInt(1, pinn);
			int accountno=Integer.parseInt(account);
			ps.setInt(2, accountno);
			int res=ps.executeUpdate();
			if(res>0) {
				RequestDispatcher rd=req.getRequestDispatcher("Successful.jsp");
				rd.forward(req, resp);
			}
			else {
				req.setAttribute("error","Invalid Account Number! Please retry.");
				RequestDispatcher rd=req.getRequestDispatcher("CgeneratePin.jsp");
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