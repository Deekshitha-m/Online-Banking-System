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
@WebServlet("/check")

public class CheckBalance extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String AcNo=req.getParameter("acc");
		String Pin=req.getParameter("pin");
		String url="jdbc:mysql://localhost:3306/bank";
		String user="root";
		String pss="tiger";
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		 String sQry = "SELECT * FROM BANK.CUSTOMER WHERE  ACCNO=? AND PIN=?";
		 PrintWriter out=resp.getWriter();
		 try { 
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection(url,user,pss);
		 ps=con.prepareStatement(sQry);
		 long AccNo=Long.parseLong(AcNo);
		 ps.setLong(1, AccNo);
		 int pinn=Integer.parseInt(Pin);
		 ps.setInt(2, pinn);
		 rs = ps.executeQuery();
		 if(rs.next()) 
		 { 
		 int account=rs.getInt(1);
		 String name=rs.getString(2);
		 double bal=rs.getDouble(5);
		 req.setAttribute("AccNum", account);
		 req.setAttribute("Sname", name);
		 req.setAttribute("Balance", bal);
		 RequestDispatcher rd=req.getRequestDispatcher("display.jsp");
		 rd.forward(req, resp);
		 }
		 else {
				req.setAttribute("error","Invalid Account Number or Pin! Please retry.");
				RequestDispatcher rd=req.getRequestDispatcher("checkBalance.jsp");
				rd.forward(req, resp);
			}
		 
		 } 
		 catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}
}