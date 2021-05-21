package data;

public class UserId {

	private static int userid;
	
	public UserId() {
		// TODO Auto-generated constructor stub
	}

	public static synchronized int getUserId() {
		return userid;
	}
	public static synchronized void setUserId(int id) {
		UserId.userid = id;
	}
	public static synchronized void setUserId(String index) {
		try {
			UserId.userid = Integer.parseInt(index);
		}
		catch(NumberFormatException | NullPointerException e) {
			//Do nothing - the value of id won't be changed
		}
	}


}
