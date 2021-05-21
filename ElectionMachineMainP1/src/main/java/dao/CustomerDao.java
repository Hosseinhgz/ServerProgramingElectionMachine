package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import data.Customer;
import data.Question;
import data.Result;


public class CustomerDao {
	private String url;
	private String user;
	private String pass;
	private Connection conn;
	
	public CustomerDao(String url, String user, String pass) {
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
	            System.out.println("Customer Dao conn is created!!");
	        }
	        return true;
		}
		catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}
	}
	
	// Insert new customer to CUSTOMER table 
	public ArrayList<Customer> addCustomer(Customer r) {
		try {
			String sql="INSERT INTO CUSTOMER (FIRSTNAME, LASTNAME, USERNAME, EMAIL, PHONE) VALUES ('r','t','y','u','y');";
			getConnection();
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, r.getFirstname());
			pstmt.setString(2, r.getLastname());
			pstmt.setString(3, r.getUsername());
			pstmt.setString(4, r.getEmail());
			pstmt.setString(5, r.getPhone());

			pstmt.executeUpdate();
			return readAllCustomer();
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	
	
	// deleteCustomer() method
	public ArrayList<Customer> deleteCustomer(String id) {
		try {
			String sql="delete from QUESTION where ID=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			return null;
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	// readCustomer method
	public Customer readCustomer(String id) {
		Customer cu=null;
		try {
			String sql="select * from CUSTOMER WHERE CUSTOMERID=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet RS=pstmt.executeQuery();
			while (RS.next()){
				cu =new Customer();
				cu.setId(RS.getInt("CUSTOMERID"));
				cu.setFirstname(RS.getString("FIRSTNAME"));
				cu.setLastname(RS.getString("LASTNAME"));
				cu.setUsername(RS.getString("USERNAME"));
				cu.setEmail(RS.getString("EMAIL"));
				cu.setPhone(RS.getString("PHONE"));
			}
			return cu;
		}
		catch(SQLException e) {
			return null;
		}
	}
	// readLastCustomer method
	public Customer readLastCustomer() {
		Customer cu=null;
		try {
			String sql="SELECT * FROM CUSTOMER ORDER BY CUSTOMERID DESC LIMIT 1";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			ResultSet RS=pstmt.executeQuery();
			while (RS.next()){
				cu =new Customer();
				cu.setId(RS.getInt("CUSTOMERID"));
				cu.setFirstname(RS.getString("FIRSTNAME"));
				cu.setLastname(RS.getString("LASTNAME"));
				cu.setUsername(RS.getString("USERNAME"));
				cu.setEmail(RS.getString("EMAIL"));
				cu.setPhone(RS.getString("PHONE"));
			}
			return cu;
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	public ArrayList<Customer> readAllCustomer() {
		ArrayList<Customer> list=new ArrayList<>();
		try {
			String sql = "SELECT * FROM QUESTION";
			getConnection();
			Statement stmt=conn.createStatement();
			ResultSet RS=stmt.executeQuery(sql);
			while (RS.next()){
				Customer cu =new Customer();
				cu.setId(RS.getInt("CUSTOMERID"));
				cu.setFirstname(RS.getString("FIRSTNAME"));
				cu.setLastname(RS.getString("LASTNAME"));
				cu.setUsername(RS.getString("USERNAME"));
				cu.setEmail(RS.getString("EMAIL"));
				cu.setPhone(RS.getString("PHONE"));
			}
			return list;
		}
		catch(SQLException e) {
			return null;
		}
	}
}
