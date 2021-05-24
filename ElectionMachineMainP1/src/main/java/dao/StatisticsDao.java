package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import data.Question;
import data.Statistic;


public class StatisticsDao {
	private String url;
	private String user;
	private String pass;
	private Connection conn;
	
	public StatisticsDao(String url, String user, String pass) {
		this.url=url;
		this.user=user;
		this.pass=pass;
	}
	
	// create getconnection method - create a connection to database 
		
	public boolean getConnection() {
		try {
	        if (conn == null || conn.isClosed()) {
	            try {
	                Class.forName("com.mysql.jdbc.Driver").newInstance();
	            } catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
	                throw new SQLException(e);
	            }
	            conn = DriverManager.getConnection(url, user, pass);
	            System.out.println("conn is created!!");
	        }
	        return true;
		}
		catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}
	}
	
	// readAllQuestion() method
	public ArrayList<Question> readAllQuestion() {
		ArrayList<Question> list=new ArrayList<>();
		try {
			String sql = "SELECT * FROM QUESTION";
			getConnection();
			Statement stmt=conn.createStatement();
			ResultSet RS=stmt.executeQuery(sql);
			while (RS.next()){
				Question q=new Question();
				q.setId(RS.getInt("ID"));
				q.setQuestion(RS.getString("QUESTION"));
				q.setAnswer(RS.getInt("ANSWER"));
				list.add(q);
			}
			return list;
		}
		catch(SQLException e) {
			return null;
		}
	}
	// readAllStatistics() method
	public ArrayList<Statistic> readAllStatistics() {
		ArrayList<Statistic> list=new ArrayList<>();
		try {
			String sql = "SELECT * FROM STATISTICS";
			getConnection();
			Statement stmt=conn.createStatement();
			ResultSet RS=stmt.executeQuery(sql);
			while (RS.next()){
				Statistic s=new Statistic();
				s.setQuestion(RS.getInt("QUESTION"));
				s.setNumAns1(RS.getInt("NUMANS1"));
				s.setNumAns2(RS.getInt("NUMANS2"));
				s.setNumAns3(RS.getInt("NUMANS3"));
				s.setNumAns4(RS.getInt("NUMANS4"));
				s.setNumAns5(RS.getInt("NUMANS5"));
				list.add(s);
			}
			return list;
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	// add a statistic values in a STATISTICS Table
	public ArrayList<Statistic> addStatistics(Statistic s) {
		try {
			String sql="INSERT INTO STATISTICS (QUESTION, numAns1, numAns2, numAns3, numAns4, numAns5) VALUES (?,?,?,?,?)";
			getConnection();
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, s.getQuestion());
			pstmt.setInt(1, s.getNumAns1());
			pstmt.setInt(2, s.getNumAns2());
			pstmt.setInt(3, s.getNumAns3());
			pstmt.setInt(4, s.getNumAns4());
			pstmt.setInt(5, s.getNumAns5());

			pstmt.executeUpdate();
			return readAllStatistics();
		}
		catch(SQLException e) {
			return null;
		}
	}

	
	// readStatisticNum() method
	public int readStatisticNum(int i, int j) {
		int s=0;
		try {
			String sql="SELECT COUNT(CANDIDATEANS) FROM candidateanswers WHERE QUESTION=? and CANDIDATEANS=?;";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, i);
			pstmt.setInt(2, j);
			
			ResultSet RS=pstmt.executeQuery();
			while (RS.next()){
				s = RS.getInt("COUNT(CANDIDATEANS)");
			}
			return s;
		}
		catch(SQLException e) {
			return 0;
		}
	}
	
	// reset QUESTION table with 0 answers before customer start Answering
	public ArrayList<Question> resetAnswer() {
		try {
			String sql="UPDATE QUESTION SET ANSWER=0";
			getConnection();
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.executeUpdate();
			return readAllQuestion();
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	
}
