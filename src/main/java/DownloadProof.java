

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

/**
 * Servlet implementation class DownloadProof
 */
public class DownloadProof extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static int BUFFER_SIZE=1024*1000;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DownloadProof() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fileName=request.getParameter("fn");
		
String path=getServletContext().getRealPath("")+"idproof"+File.separator+fileName;
		
		File file=new File(path);
		OutputStream os=null;
		FileInputStream fis=null;
		
		try {
			if(file.exists())
			{
				response.setHeader("Content-Disposition", String.format("attachment;filename=\"%s\"", file.getName()));
				response.setContentType("application/octet-stream");
				
				os=response.getOutputStream();
				
				fis=new FileInputStream(file);
				
				byte[] bf=new byte[BUFFER_SIZE];
				int byteRead=-1;
				
				while((byteRead=fis.read(bf))!=-1)
				{
					os.write(bf,0,byteRead);
				}
				
				
			}
			else
			{
				response.setContentType("text/html");
				response.getWriter().print("<h4>Image not found with= "+fileName+"</h4>");
//				System.out.println("File Not Found= "+fileName);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			if(fis !=null)
			{
				fis.close();
			}
			os.flush();
			if(os !=null)
			{
				os.close();
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
