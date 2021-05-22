package app;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDao;

/**
 * Servlet implementation class CheckUser
 */
@WebServlet("/checkuser")
public class CheckUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminDao dao=null;
	
	@Override
	public void init() {
		
		dao = new AdminDao("jdbc:mysql://localhost:3306/electionmachine", "root", "Hh4497");

	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("username");
		String password = request.getParameter("password");
		
		if (dao.getConnection()) {
			if (dao.checkadmin(uname,password)) {
				
				HttpSession session = request.getSession();
				session.setAttribute("username", uname);
				response.sendRedirect("../jsp/adminmain.jsp");
			}else {
				response.sendRedirect("../jsp/adminlogin.jsp");
	
			}
		}
	}


}
