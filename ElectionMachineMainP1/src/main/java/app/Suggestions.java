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
import data.CandidateAnswers;
import data.CounterIndex;
import data.Question;

/**
 * Servlet implementation class ShowFish
 */
@WebServlet("/suggestions")
public class Suggestions extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CandidateDao dao=null;
	
	@Override
	public void init() {
		
		dao = new CandidateDao("jdbc:mysql://localhost:3306/electionmachine", "root", "Hh4497");

	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Suggestions() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Question> qalist=null;
		if (dao.getConnection()) {
			qalist = dao.readAllQuestion();
		}
		else {
			System.out.println("No connection to database for read questions");
		}
		
		ArrayList<CandidateAnswers> caAnslist=null;
		ArrayList<Result> resultlist=null;

		
		for(int i=1;i<=qalist.size();i++)
		
			if (dao.getConnection()) {
				caAnslist = dao.readCandidateAnswers(i);
			
			}
			else {
				System.out.println("No connection to database for read CandidateAnswers");
			}

		request.setAttribute("questionlist", list);
		
		RequestDispatcher rd=request.getRequestDispatcher("/jsp/result.jsp");
		rd.forward(request, response);
	}
}
