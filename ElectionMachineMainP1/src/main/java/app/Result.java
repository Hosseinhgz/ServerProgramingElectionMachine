package app;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import data.CounterIndex;
import data.Question;

/**
 * Servlet implementation class ShowFish
 */
@WebServlet("/result")
public class Result extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Dao dao=null;
	
	@Override
	public void init() {
		
		dao = new Dao("jdbc:mysql://localhost:3306/electionmachine", "root", "Hh4497");

	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Result() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Question> list=null;
		
		// reset the index to 0 again
		CounterIndex.resetIndex();
		
		// save the answer to last question to database and read all question and answers
		Question q = new Question(request.getParameter("id"),request.getParameter("question"),request.getParameter("answer"));
		if (dao.getConnection()) {
			list = dao.updateAnswer(q);
		
		}
		else {
			System.out.println("No connection to database for read questions");
		}

		request.setAttribute("questionlist", list);
		
		RequestDispatcher rd=request.getRequestDispatcher("/jsp/result.jsp");
		rd.forward(request, response);
	}
}
