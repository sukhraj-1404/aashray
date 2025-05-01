

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminLogin
 */
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException  e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aashray_project","root","sukh1404");
			PreparedStatement ps=con.prepareStatement("Select Email from admin_login where Email=? and Password=?");
			 
			 //set the value
			 ps.setString(1, email);
			 ps.setString(2, password);
			 
			 //execute the query
			 ResultSet rs=ps.executeQuery();
			 if(rs.next())
			 {
				 RequestDispatcher rd=request.getRequestDispatcher("admin_home.jsp");
				 rd.forward(request, response);
			 }
			 else
			 {
				 out.println("<h2>Login Failed!</h2>");
				 RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
				 rd.include(request, response);
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.println(e.getMessage());
			e.printStackTrace();
		}
		out.close();
	}

}
