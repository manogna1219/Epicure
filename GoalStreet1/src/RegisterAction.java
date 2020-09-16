

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterAction
 */
public class RegisterAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("uname");
		String phone=request.getParameter("phn"); 
		String email=request.getParameter("email");
		String password=request.getParameter("pwd");
		 try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epicure","root","");
			    Statement st=con.createStatement();
			    int i=st.executeUpdate("insert into customer values('"+name+"','"+phone+"','"+email+"','"+password+"','pending')");
			if (i>0)
				response.sendRedirect("login.html");
			//System.out.println("registerted");
		
		
		
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	}

}
