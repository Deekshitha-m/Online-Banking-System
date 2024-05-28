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

@WebServlet("/view")
public class ViewData extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp ) throws ServletException,IOException
	{
		String acc=req.getParameter("nm");
		String url="jdbc:mysql://localhost:3306/bank";
		String user="root";
		String pass="tiger";
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String query1="SELECT * FROM CUSTOMER WHERE ACCNO=?";
		PrintWriter out= resp.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,user,pass);
			ps=con.prepareStatement(query1);
			int accno=Integer.parseInt(acc);
			ps.setInt(1, accno);
			rs=ps.executeQuery();
	//		out.println("<html><body bgcolor='#f5ed05' height='100px' color='green' text-align='center'"+"<h4 color='green' font-size='20px'>View Customer Details "+"<br>"+"</h4>"+"</body></html>");
			if(rs.next()) {
				int Account=rs.getInt(1);
				String NAME=rs.getString(2);
				long PHONE=rs.getLong(3);
				String MAILID=rs.getString(4);
				double BALANCE=rs.getDouble(5);
				out.println(Account+" "+NAME+" "+PHONE+" "+MAILID+" "+BALANCE+" ");
				req.setAttribute("A",Account);
				req.setAttribute("N",NAME);
				req.setAttribute("P", PHONE);
				req.setAttribute("M",MAILID);
				req.setAttribute("B",BALANCE);
				RequestDispatcher rd=req.getRequestDispatcher("View.jsp");
				rd.forward(req, resp);
			}
			else {
				req.setAttribute("error","Invalid Account Number. Please retry.");
				RequestDispatcher rd=req.getRequestDispatcher("ViewData.jsp");
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
					if(rs!=null) rs.close();
				}
				catch(Exception e1){
					e1.printStackTrace();
				}		
			}
		}
}