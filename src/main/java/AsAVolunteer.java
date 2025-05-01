

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;


/**
 * Servlet implementation class AsAVolunteer
 */
@MultipartConfig
public class AsAVolunteer extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AsAVolunteer() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		//read the form
		String name=request.getParameter("name");
		String age=request.getParameter("age");
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String country=request.getParameter("country");
		String zipcode=request.getParameter("zipCode");
		String occupation=request.getParameter("occupation");
		
		Part p=request.getPart("IDProof");
		String fileName=p.getSubmittedFileName();
		
		HttpSession session=request.getSession();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aashray_project","root","sukh1404");
			
			PreparedStatement ps=con.prepareStatement("INSERT INTO volunteersform (Name,Age,Email,Contact,Address,City,State,Country,ZipCode,Occupation,IdProofName)VALUES(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, age);
			ps.setString(3, email);
			ps.setString(4, contact);
			ps.setString(5, address);
			ps.setString(6, city);
			ps.setString(7, state);
			ps.setString(8, country);
			ps.setString(9, zipcode);
			ps.setString(10, occupation);
			ps.setString(11, fileName);
			
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				String path=getServletContext().getRealPath("")+"idproof";
				
				File file=new File(path);
				p.write(path+File.separator+fileName);
				
				session.setAttribute("msg", "Form Submitted!!");
				response.sendRedirect("asAVolunteer.jsp");
			}
			else
			{
				System.out.println("Error!!");
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String path=getServletContext().getRealPath("")+"idproof";
		System.out.println(path);
	}
	
}
