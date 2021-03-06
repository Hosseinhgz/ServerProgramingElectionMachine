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


public class Dao {
	private String url;
	private String user;
	private String pass;
	private Connection conn;
	
	public Dao(String url, String user, String pass) {
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
	
	// readQuestion() method
	public ArrayList<Question> readQuestion(Question q) {
		ArrayList<Question> singleQuestion=new ArrayList<>();
		try {
			String sql="SELECT * FROM QUESTION WHERE ID=?";
			getConnection();
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, q.getId());
			ResultSet RS=pstmt.executeQuery(sql);

			q.setId(RS.getInt("ID"));
			q.setQuestion(RS.getString("QUESTION"));
			q.setAnswer(RS.getString("ANSWER"));

			singleQuestion.add(q);
			return singleQuestion;

		}
		catch(SQLException e) {
			return null;
		}
	}
	
	
	// update question text with updateQuestion(Question q) method
	public ArrayList<Question> updateQuestion(Question q) {
		try {
			String sql="UPDATE QUESTION SET QUESTION= ?, ANSWER=0 WHERE ID=?";
			getConnection();
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, q.getQuestion());
			pstmt.setInt(2, q.getId());
			pstmt.executeUpdate();
			return readAllQuestion();
		}
		catch(SQLException e) {
			return null;
		}
	}
	// update question text with updateQuestion(Question q) method
	public ArrayList<Question> addQuestion(Question q) {
		try {
			String sql="INSERT INTO QUESTION (QUESTION) VALUES (?)";
			getConnection();
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, q.getQuestion());
			pstmt.executeUpdate();
			return readAllQuestion();
		}
		catch(SQLException e) {
			return null;
		}
	}
	// update QUESTION table with customers answers customerAnswer(CustomerAnswers a) method
	public ArrayList<Question> updateAnswer(Question q) {
		try {
			String sql="UPDATE QUESTION SET ANSWER=? WHERE ID=?";
			getConnection();
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, q.getAnswer());
			pstmt.setInt(2, q.getId());
			pstmt.executeUpdate();
			return readAllQuestion();
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	// deleteQuestion() method
	public ArrayList<Question> deleteQuestion(String id) {
		try {
			String sql="DELETE FROM QUESTION WHERE ID=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			return readAllQuestion();
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	// readQuestion method
	public Question readQuestion(String id) {
		Question q=null;
		try {
			String sql="select * from QUESTION where ID=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet RS=pstmt.executeQuery();
			while (RS.next()){
				q=new Question();
				q.setId(RS.getInt("ID"));
				q.setQuestion(RS.getString("QUESTION"));
				q.setAnswer(RS.getInt("ANSWER"));

			}
			return q;
		}
		catch(SQLException e) {
			return null;
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
