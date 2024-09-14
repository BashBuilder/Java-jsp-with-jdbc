import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/demoservlet")
public class DemoClass extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		
		String nameString = "Anthony";
		
		req.setAttribute("nameString", nameString);
		
		RequestDispatcher rDispatcher = req.getRequestDispatcher("profile.jsp");
		try {
			rDispatcher.forward(req, res);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
