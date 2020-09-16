

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HotelRegister1
 */
public class HotelRegister1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HotelRegister1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hotel=request.getParameter("hotel");
		String address=request.getParameter("add"); 
		String tables=request.getParameter("tab");
		String info=request.getParameter("inf");
		String contact=request.getParameter("cont");
		String specialdish=request.getParameter("dish");
		String dishcost=request.getParameter("dcost");
		
		 try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epicure","root","");
			    Statement st=con.createStatement();
			    int i=st.executeUpdate("insert into hotel values('"+hotel+"','"+address+"','"+tables+"','"+info+"','"+contact+"','"+specialdish+"','"+dishcost+"')");
			if (i>0)
				response.sendRedirect("viewhotels.jsp");
			//System.out.println("registerted");
		
		
		
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	}

}
