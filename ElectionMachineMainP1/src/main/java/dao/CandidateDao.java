package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import data.Candidate;
import data.Question;


public class CandidateDao {
	private String url;
	private String user;
	private String pass;
	private Connection conn;
	
	public CandidateDao(String url, String user, String pass) {
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
	            //for test
	            //System.out.println("conn is created!!");
	        }
	        return true;
		}
		catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}
	}
	
	// readAllCandidate() method
	public ArrayList<Candidate> readAllCandidate() {
		ArrayList<Candidate> list=new ArrayList<>();
		try {
			String sql = "SELECT * FROM CANDIDATE";
			getConnection();
			Statement stmt=conn.createStatement();
			ResultSet RS=stmt.executeQuery(sql);
			while (RS.next()){
				Candidate c=new Candidate();
				//c.setId(RS.getInt("ID"));
				//c.setQuestion(RS.getString("QUESTION"));
				list.add(c);
			}
			return list;
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	// readCandidate() method
	public ArrayList<Candidate> readCandidate(Candidate c) {
		ArrayList<Candidate> singleCandidate=new ArrayList<>();
		try {
			String sql="SELECT * FROM CANDIDATE WHERE ID=?";
			getConnection();
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, c.getId());
			ResultSet RS=pstmt.executeQuery(sql);

			//c.setId(RS.getInt("ID"));
			//c.setQuestion(RS.getString("QUESTION"));
			//singleCandidate.add(c);
			return singleCandidate;

		}
		catch(SQLException e) {
			return null;
		}
	}
	
	
	// update candidate text with updateCandidate(Candidate c) method
	public ArrayList<Candidate> updateCandidate(Candidate c) {
		try {
			String sql="UPDATE CANDIDATE SET ????= ? WHERE ID=?";
			getConnection();
			PreparedStatement pstmt=conn.prepareStatement(sql);
			//pstmt.setString(1, c.getCandidate());
			//pstmt.setInt(2, c.getId());
			pstmt.executeUpdate();
			return readAllCandidate();
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	// deleteCandidate() method
	public ArrayList<Candidate> deleteCandidate(String id) {
		try {
			String sql="delete from CANDIDATE where ID=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			//pstmt.setString(1, id);
			//pstmt.executeUpdate();
			return readAllCandidate();
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	// readCandidate method
	public Candidate readCandidate(String id) {
		Candidate c=null;
		try {
			String sql="select * from CANDIDATE where ID=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet RS=pstmt.executeQuery();
			while (RS.next()){
				//c=new Candidate();
				//c.setId(RS.getInt("ID"));
				//c.setCandidate(RS.getString("QUESTION"));
			}
			return c;
		}
		catch(SQLException e) {
			return null;
		}
	}

	
	
}
