

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class Viewprof extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Viewprof() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		//String nam=request.getParameter("uname");
		HttpSession session=request.getSession();
        String nam=(String) session.getAttribute("nkey");
		
		try 
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epicure","root","");
			
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from customer where name='"+nam+"'");
			if(rs.next())
			{
			String n=rs.getString("name");
			String p=rs.getString("phone");
			String e=rs.getString("email");
			String m=rs.getString("password");
			//System.out.println(n+p+e);
			
			out.println("<html>");
			out.println("<table border=1>");
			out.println("<tr>");
			out.println("<td>");
			out.println("Name");
			out.println("</td>");
			
			
			out.println("<td>");
			out.println("phone");
			out.println("</td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td>");
			out.println(n);
			out.println("</td>");
			out.println("<td>");
			out.println(p);
			out.println("</td>");
			out.println("</tr>");
			
			out.println("</table>");
			out.println("</html>");
		
}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
