package app;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import data.Question;

/**
 * Servlet implementation class ReadToUpdate
 */
@WebServlet("/readtoupdatequestion")
public class ReadToUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Dao dao;
	public void init() {
		dao=new Dao("jdbc:mysql://localhost:3306/electionmachine", "root", "Hh4497");
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReadToUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		Question q=null;
		if (dao.getConnection()) {
			q=dao.readQuestion(id);
		}
		request.setAttribute("question", q);
		
		RequestDispatcher rd=request.getRequestDispatcher("/jsp/question/readquestiontoupdate.jsp");
		rd.forward(request, response);
	}
}
