package data;

public class CounterIndex {

	private static int index;
	
	public CounterIndex() {
		// TODO Auto-generated constructor stub
	}

	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		CounterIndex.index = index;
	}
	public void setIndex(String index) {
		try {
			CounterIndex.index = Integer.parseInt(index);
		}
		catch(NumberFormatException | NullPointerException e) {
			//Do nothing - the value of id won't be changed
		}
	}
	
	public static synchronized int currentIndex() {
		return index;
	}
	public static synchronized int higherIndex() {
		return index++;
	}
	public static synchronized int lowerIndex() {
		return index--;
	}
}
