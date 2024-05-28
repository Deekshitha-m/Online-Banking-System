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

@WebServlet("/transfer")
public class Transfer extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String baccount=req.getParameter("ac");
	long Baccno=Long.parseLong(baccount);
	String amt=req.getParameter("am");
	double amount=Double.parseDouble(amt);
	String pin=req.getParameter("pn");
	int Pin=Integer.parseInt(pin);
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	String sBal="SELECT * FROM BANK.CUSTOMER WHERE NAME=?";
	 String sender="UPDATE BANK.CUSTOMER SET BALANCE=BALANCE-? WHERE  PIN=?";
	 String Receiver="UPDATE BANK.CUSTOMER SET BALANCE=BALANCE+? WHERE ACCNO=?";
	 try {
		con=Connector.requestConnection() ;
		ps=con.prepareStatement(sender);
		ps.setDouble(1, amount);
	
		ps.setInt(2, Pin);
		int update=ps.executeUpdate();
		if(update>0) {
			ps=con.prepareStatement(Receiver);
			ps.setDouble(1, amount);
			ps.setLong(2, Baccno);
			int res=ps.executeUpdate();
			if(res>0) {
				req.setAttribute("str", "Amount Transfered Successfully");
				RequestDispatcher rd=req.getRequestDispatcher("transfer.jsp");
				rd.forward(req, resp);
			}
			else {
				RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
				rd.forward(req, resp);
				
			}
			
		}
		
		
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
	
}

}

