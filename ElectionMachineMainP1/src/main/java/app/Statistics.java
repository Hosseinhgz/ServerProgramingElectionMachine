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
import dao.StatisticsDao;
import data.Question;
import data.Statistic;

/**
 * Servlet implementation class ShowFish
 */
@WebServlet("/statistics")
public class Statistics extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StatisticsDao sdao=null;
	
	@Override
	public void init() {
		
		sdao = new StatisticsDao("jdbc:mysql://localhost:3306/electionmachine", "root", "Hh4497");

	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Statistics() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Statistic> list=new ArrayList<Statistic>();
		ArrayList<Question> qalist=null;
		if (sdao.getConnection()) {
			qalist = sdao.readAllQuestion();
			
			for(int i=1; i<=qalist.size() ;i++) {

				int numAns1 = sdao.readStatisticNum(i,1);
				int numAns2 = sdao.readStatisticNum(i,2);
				int numAns3 = sdao.readStatisticNum(i,3);
				int numAns4 = sdao.readStatisticNum(i,4);
				int numAns5 = sdao.readStatisticNum(i,5);
				Statistic s = new Statistic(i, numAns1, numAns2, numAns3, numAns4, numAns5);
				list.add(s);				
			}
		}
		else {
			System.out.println("No connection to database for read all questions");
		}
		request.setAttribute("statisticslist", list);
		
		RequestDispatcher rd=request.getRequestDispatcher("/jsp/statistics.jsp");
		rd.forward(request, response);
	}
}
