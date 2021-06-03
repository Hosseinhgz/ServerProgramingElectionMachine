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
@WebServlet("/showallcandidates")
public class ShowAllCandidates extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CandidateDao dao=null;
	
	@Override
	public void init() {
		
		dao = new CandidateDao("jdbc:mysql://localhost:3306/electionmachine", "root", "Hh4497");

	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowAllCandidates() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Candidate> list=null;
		if (dao.getConnection()) {
			list = dao.readAllCandidates();
		}
		else {
			System.out.println("No connection to database for read all candidates");
		}
		request.setAttribute("candidatelist", list);
		
		RequestDispatcher rd=request.getRequestDispatcher("/jsp/candidate/showallcandidates.jsp");
		rd.forward(request, response);
	}
}
