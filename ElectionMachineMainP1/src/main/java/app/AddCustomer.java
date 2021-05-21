package app;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CustomerDao;
import dao.Dao;
import data.Customer;
import data.Question;

/**
 * Servlet implementation class ShowFish
 */
@WebServlet("/addcustomer")
public class AddCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CustomerDao cudao=null;
	
	@Override
	public void init() {
		
		cudao = new CustomerDao("jdbc:mysql://localhost:3306/electionmachine", "root", "Hh4497");

	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		
		Customer cu=new Customer(firstname, lastname, username, email, phone);
		Customer cul = new Customer();
		if (cudao.getConnection()) {
			cudao.addCustomer(cu);
			cul = cudao.readLastCustomer();
		}
		
		request.setAttribute("customer", cul);
		RequestDispatcher rd=request.getRequestDispatcher("/showquestion");
		rd.forward(request, response);
	}
}
