package app;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CandidateDao;
import data.Candidate;

/**
 * Servlet implementation class ShowFish
 */
@WebServlet("/showonecandidate")
public class ShowOneCandidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CandidateDao cadao=null;
	
	@Override
	public void init() {
		
		cadao = new CandidateDao("jdbc:mysql://localhost:3306/electionmachine", "root", "Hh4497");

	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowOneCandidate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		Candidate c = null;
		
		if (cadao.getConnection()) {
			c = cadao.readCandidate(id);
		}
		else {
			System.out.println("No connection to database for read all candidates");
		}
		request.setAttribute("candidate", c);
		
		RequestDispatcher rd=request.getRequestDispatcher("/jsp/candidate/showonecandidate.jsp");
		rd.forward(request, response);
	}
}
