package first;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		request.setCharacterEncoding("UTF-8");
//		PrintWriter out = response.getWriter();
//		File file = null;
//		BufferedReader reader = null;
//		try{
//			file = new File("C:/Users/94946/Desktop/tag.html");
//			reader = new BufferedReader(new FileReader(file));
//			for(String line = reader.readLine(); line!=null; line = reader.readLine()){
//				out.println(line);
//			}
//		}catch(Exception e){
//			e.printStackTrace();
//		}finally{
//			
//		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("print_request.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//request.setCharacterEncoding("utf-8");
		//response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String Names = request.getParameter("post_sth");
		out.println(Names);
		out.println("ÊÇ");
		System.out.println(Names);
		
	}

}
