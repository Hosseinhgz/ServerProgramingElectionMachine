package app;

import java.io.IOException;

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
 * Servlet implementation class ReadToUpdate
 */
@WebServlet("/readcandidatetoupdate")
public class ReadCandidateToUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CandidateDao dao;
	public void init() {
		dao=new CandidateDao("jdbc:mysql://localhost:3306/electionmachine", "root", "Hh4497");
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReadCandidateToUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		Candidate c=null;
		if (dao.getConnection()) {
			c=dao.readCandidate(id);
		}
		request.setAttribute("candidate", c);
		
		RequestDispatcher rd=request.getRequestDispatcher("/jsp/candidate/readcandidatetoupdate.jsp");
		rd.forward(request, response);
	}
}
