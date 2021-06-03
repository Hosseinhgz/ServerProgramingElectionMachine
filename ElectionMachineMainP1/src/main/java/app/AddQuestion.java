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
import data.Question;

/**
 * Servlet implementation class ShowFish
 */
@WebServlet("/addquestion")
public class AddQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Dao dao=null;
	
	@Override
	public void init() {
		
		dao = new Dao("jdbc:mysql://localhost:3306/electionmachine", "root", "Hh4497");

	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddQuestion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Question> list=null;
		String newquestion=request.getParameter("question");

		
		Question q=new Question(newquestion);
		if (dao.getConnection()) {
			dao.addQuestion(q);
		}else {
			response.getWriter().print("no connection for add question");
		}
		//read the question again in new object to bring the id from table auto increment
		list = dao.readAllQuestion();

		request.setAttribute("questionlist", list);
		RequestDispatcher rd=request.getRequestDispatcher("/editallquestions");
		rd.forward(request, response);
	}
}
