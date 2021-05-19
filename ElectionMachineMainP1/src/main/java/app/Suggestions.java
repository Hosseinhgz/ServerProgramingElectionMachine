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
	private CandidateDao cdao=null;
	
	@Override
	public void init() {
		
		cdao = new CandidateDao("jdbc:mysql://localhost:3306/electionmachine", "root", "Hh4497");

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
		ArrayList<CandidateAnswers> caAnslist=null;
		ArrayList<Result> resultlist=null;
		
		for(int i=1;i<=qalist.size();i++)		
			if (cdao.getConnection()) {
				
				caAnslist = cdao.readCandidateAnswers(i);
				qalist = cdao.readAllQuestion();
				System.out.println("been here 1");

			// calculations are here	
				
				
				
				
				
				
				
				
			}
			else {
				System.out.println("No connection to database for read CandidateAnswers or questions");
			}

		request.setAttribute("resultlist", caAnslist);		
		RequestDispatcher rd=request.getRequestDispatcher("/jsp/suggestions.jsp");
		rd.forward(request, response);
	}
}
