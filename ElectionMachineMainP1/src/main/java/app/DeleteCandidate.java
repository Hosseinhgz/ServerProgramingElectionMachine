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
import dao.Dao;
import data.Candidate;
import data.Question;

/**
 * Servlet implementation class ShowFish
 */
@WebServlet("/deletecandidate")
public class DeleteCandidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CandidateDao dao=null;
	
	@Override
	public void init() {
		
		dao = new CandidateDao("jdbc:mysql://localhost:3306/electionmachine", "root", "Hh4497");

	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCandidate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Candidate> list=null;
		String id =request.getParameter("id");

		if (dao.getConnection()) {
			dao.deleteCandidate(id);
			dao.deleteCandidateAns(id);
		}else {
			response.getWriter().print("no connection for add question");
		}
		//read the question again in new object to bring the id from table auto increment
		list = dao.readAllCandidate();

		request.setAttribute("candidatelist", list);
		RequestDispatcher rd=request.getRequestDispatcher("/editallcandidates");
		rd.forward(request, response);
	}
}
