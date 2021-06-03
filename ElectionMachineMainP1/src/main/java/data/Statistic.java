package data;

public class Statistic {
	private int question;
	private int numAns1;
	private int numAns2;
	private int numAns3;
	private int numAns4;
	private int numAns5;
	
	
	public Statistic() {

	}
	
	public Statistic(int question) {
		super();
		this.question = question;
	}
	public Statistic(int question, int numAns1, int numAns2, int numAns3, int numAns4, int numAns5) {
		super();
		this.question = question;
		this.numAns1 = numAns1;
		this.numAns2 = numAns2;
		this.numAns3 = numAns3;
		this.numAns4 = numAns4;
		this.numAns5 = numAns5;
	}
	public Statistic(String question, String numAns1, String numAns2, String numAns3, String numAns4, String numAns5) {
		super();
		this.question = Integer.parseInt(question);
		this.numAns1 = Integer.parseInt(numAns1);
		this.numAns2 = Integer.parseInt(numAns2);
		this.numAns3 = Integer.parseInt(numAns3);
		this.numAns4 = Integer.parseInt(numAns4);
		this.numAns5 = Integer.parseInt(numAns5);
	}

	public int getQuestion() {
		return question;
	}

	public void setQuestion(int question) {
		this.question = question;
	}

	public int getNumAns1() {
		return numAns1;
	}

	public void setNumAns1(int numAns1) {
		this.numAns1 = numAns1;
	}
	public void setNumAns1(String numAns1) {
		this.numAns1 = Integer.parseInt(numAns1);
	}
	
	public int getNumAns2() {
		return numAns2;
	}

	public void setNumAns2(int numAns2) {
		this.numAns2 = numAns2;
	}
	public void setNumAns2(String numAns2) {
		this.numAns2 = Integer.parseInt(numAns2);
	}
	
	public int getNumAns3() {
		return numAns3;
	}

	public void setNumAns3(int numAns3) {
		this.numAns3 = numAns3;
	}
	public void setNumAns3(String numAns3) {
		this.numAns3 = Integer.parseInt(numAns3);
	}
	public int getNumAns4() {
		return numAns4;
	}

	public void setNumAns4(int numAns4) {
		this.numAns4 = numAns4;
	}
	public void setNumAns4(String numAns4) {
		this.numAns4 = Integer.parseInt(numAns4);
	}
	public int getNumAns5() {
		return numAns5;
	}

	public void setNumAns5(int numAns5) {
		this.numAns5 = numAns5;
	}
	public void setNumAns5(String numAns5) {
		this.numAns5 = Integer.parseInt(numAns5);
	}
	


}





