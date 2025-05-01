

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class updateRecords
 */
public class updateRecords extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateRecords() {
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
		
		// Retrieve form data
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        String message = request.getParameter("message");
        
        String ShowMess=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Connection con;
		ResultSet rs = null;
		try
		{
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aashray_project","root","sukh1404");
			 String query = "UPDATE getintouch SET Name=?, Email=?, Contact_Number=?, Message=? WHERE Id=?";
			
			 PreparedStatement pstmt = con.prepareStatement(query);
	            pstmt.setString(1, name);
	            pstmt.setString(2, email);
	            pstmt.setString(3, contact);
	            pstmt.setString(4, message);
	            pstmt.setInt(5, id);
	            
	            int rowsUpdated = pstmt.executeUpdate();
	            
	         // Redirect to a confirmation page or display a message
	            if (rowsUpdated > 0) {
	            	ShowMess="Form Updatted Successfully!!";
	            } else {
	            	ShowMess="Error!!";
	            }
	            HttpSession session = request.getSession();
				session.setAttribute("ShowMess", ShowMess);
				jakarta.servlet.RequestDispatcher rd = request.getRequestDispatcher("editRecord.jsp?id=" + id);
				rd.forward(request, response);
		}
		catch (Exception e) {
			  e.printStackTrace();
			}
	}

}
