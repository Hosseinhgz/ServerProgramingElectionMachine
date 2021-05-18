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
				c.setId(RS.getInt("ID"));
				c.setFirstname(RS.getString("FIRSTNAME"));
				c.setSurname(RS.getString("SURNAME"));
				c.setIka(RS.getInt("IKA"));
				c.setParty(RS.getString("PARTY"));
				c.setLocation(RS.getString("LOCATION"));
				c.setWhatAthesWantEdes(RS.getString("WHAT_ATHES_WANT_EDES"));
				c.setWhyCommission(RS.getString("WHY_COMMISSION"));
				c.setProfessional(RS.getString("PROFESSIONAL"));
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

			c.setId(RS.getInt("ID"));
			c.setFirstname(RS.getString("FIRSTNAME"));
			c.setSurname(RS.getString("SURNAME"));
			c.setIka(RS.getInt("IKA"));
			c.setParty(RS.getString("PARTY"));
			c.setLocation(RS.getString("LOCATION"));
			c.setWhatAthesWantEdes(RS.getString("WHAT_ATHES_WANT_EDES"));
			c.setWhyCommission(RS.getString("WHY_COMMISSION"));
			c.setProfessional(RS.getString("PROFESSIONAL"));

			singleCandidate.add(c);
			return singleCandidate;

		}
		catch(SQLException e) {
			return null;
		}
	}
	
	
	// update candidate text with updateCandidate(Candidate c) method
	public ArrayList<Candidate> updateCandidate(Candidate c) {
		try {
			String sql="UPDATE CANDIDATE SET SURNAME= ?, FIRSTNAME=?, PARTY=?, LOCATION=?,"
					+ " IKA=?, WHY_COMMISSION=?, WHAT_ATHES_WANT_EDES=?, PROFESSIONAL=?  WHERE ID=?";
			getConnection();
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, c.getSurname());
			pstmt.setString(2, c.getFirstname());
			pstmt.setString(3, c.getParty());
			pstmt.setString(4, c.getLocation());
			pstmt.setInt(5, c.getIka());
			pstmt.setString(6, c.getWhyCommission());
			pstmt.setString(7, c.getWhatAthesWantEdes());
			pstmt.setString(8, c.getProfessional());
			pstmt.setInt(9, c.getId());
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
			pstmt.setString(1, id);
			pstmt.executeUpdate();
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
				c=new Candidate();
				c.setId(RS.getInt("ID"));
				c.setFirstname(RS.getString("FIRSTNAME"));
				c.setSurname(RS.getString("SURNAME"));
				c.setIka(RS.getInt("IKA"));
				c.setParty(RS.getString("PARTY"));
				c.setLocation(RS.getString("LOCATION"));
				c.setWhatAthesWantEdes(RS.getString("WHAT_ATHES_WANT_EDES"));
				c.setWhyCommission(RS.getString("WHY_COMMISSION"));
				c.setProfessional(RS.getString("PROFESSIONAL"));
			}
			return c;
		}
		catch(SQLException e) {
			return null;
		}
	}
	// readCandidateAnswers() method which read all answers of specific candidate
	public ArrayList<CandidateAnswers> readCandidateAnswers(int candidateId) {
		ArrayList<CandidateAnswers> cAnswersList=new ArrayList<>();
		try {
			String sql = "SELECT * FROM CANDIDATEANSWERS WHERE CANDIDATEID="+candidateId;
			getConnection();
			Statement stmt=conn.createStatement();
			ResultSet RS=stmt.executeQuery(sql);
			while (RS.next()){
				Candidate c=new Candidate();
				c.setId(RS.getInt("ID"));
				c.setFirstname(RS.getString("FIRSTNAME"));
				c.setSurname(RS.getString("SURNAME"));
				c.setIka(RS.getInt("IKA"));
				c.setParty(RS.getString("PARTY"));
				c.setLocation(RS.getString("LOCATION"));
				c.setWhatAthesWantEdes(RS.getString("WHAT_ATHES_WANT_EDES"));
				c.setWhyCommission(RS.getString("WHY_COMMISSION"));
				c.setProfessional(RS.getString("PROFESSIONAL"));
				
				cAnswersList.add(c);
			}
			return cAnswersList;
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	
}
