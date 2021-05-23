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
import data.CounterIndex;
import data.Question;
import data.UserId;

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
		ArrayList<data.Result> resultlist= new ArrayList<>();
		ArrayList<data.Result> suggestlist= new ArrayList<>();
		ArrayList<data.Candidate> suggcanlist= new ArrayList<>();

				
		for(int j=1; j<=6;j++) {	
			if (cdao.getConnection()) {
				
				
				// calculations are here *********** IMPORTANT *************

				caAnslist = cdao.readCandidateAnswers(j);
				qalist = cdao.readAllQuestion();
				double res = 0;
				double percentResult = 0;

				for(int i=0;i<qalist.size();i++)	{
				
					int x = caAnslist.get(i).getCandidateans();
					int y = qalist.get(i).getAnswer();
					//System.out.println("i loop");
					if (y!=0) {
						res = res + (1-(java.lang.Math.abs(x-y)*0.25));
					}
				
				}
				percentResult = res*100/qalist.size();
				data.Result r = new data.Result(j,UserId.getUserId(),percentResult);
				cdao.insertResult(r);
				resultlist.add(r);
				//System.out.println("j loop");

			}
			else {
				System.out.println("No connection to database for read CandidateAnswers or questions");
			}
		}
		
		suggestlist = cdao.readSuggestions();
		
		suggcanlist = cdao.readSuggCandidate(suggestlist.get(0).getCandidateid(),suggestlist.get(1).getCandidateid(), suggestlist.get(2).getCandidateid());
//		System.out.println(suggcanlist.get(0));
//		System.out.println(suggcanlist.get(1));

		
		System.out.println("been here and suggcanlist size: "+ suggcanlist.size());
		request.setAttribute("resultlist", suggcanlist);		
		RequestDispatcher rd=request.getRequestDispatcher("/jsp/suggestions.jsp");
		rd.forward(request, response);
	}
}
