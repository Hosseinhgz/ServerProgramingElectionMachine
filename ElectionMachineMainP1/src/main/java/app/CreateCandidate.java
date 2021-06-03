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
import data.CandidateAnswers;
import data.Question;

/**
 * Servlet implementation class ShowFish
 */
@WebServlet("/createcandidate")
public class CreateCandidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CandidateDao dao=null;
	
	@Override
	public void init() {
		
		dao = new CandidateDao("jdbc:mysql://localhost:3306/electionmachine", "root", "Hh4497");

	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateCandidate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Candidate> list= new ArrayList<Candidate>();
		ArrayList<CandidateAnswers> caAnsList=new ArrayList<CandidateAnswers>();
		ArrayList<Question> questionlist=null;

		Candidate c=new Candidate(request.getParameter("id"), request.getParameter("surname"),request.getParameter("firstname"),
				 request.getParameter("party"),request.getParameter("location"), request.getParameter("ika"), 
				 request.getParameter("whyCommission"), request.getParameter("whatAthesWantEdes") , request.getParameter("professional"));

		list = dao.insertCandidate(c);

		
		dao.getConnection();
		questionlist = dao.readAllQuestion();

		
		for (int i=0; i< questionlist.size();i++) {
			CandidateAnswers ca=new CandidateAnswers(request.getParameter("id"), (i+1) , request.getParameter(String.valueOf(i+1)));
			caAnsList.add(ca);
			if (dao.getConnection()) {
				dao.insertCandidateAns(ca);
			}else {
				response.getWriter().print("no connection for add new candidate answers");
			}

		}
		

		request.setAttribute("candidatelist", list);
		RequestDispatcher rd=request.getRequestDispatcher("/editallcandidates");
		rd.forward(request, response);
	}
}
