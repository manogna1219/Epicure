

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginAct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public LoginAct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("uname");
		String password=request.getParameter("pwd"); 
		HttpSession session=request.getSession();
		session.setAttribute("nkey", name);
		if(name.equals("admin") && password.equals("admin")) {
			response.sendRedirect("adminhome.jsp");
			
		}else {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epicure","root","");
			
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from customer where name ='"+name+"' and  password='"+password+"'and status='accepted' ");
			if(rs.next()) {
			response.sendRedirect("homee.jsp");
			}
			else
			
				{
					response.sendRedirect("login.html");
				}
			}
			
				catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}}
	}

}
