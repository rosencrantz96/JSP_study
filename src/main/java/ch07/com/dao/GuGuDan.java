package ch07.com.dao;

public class GuGuDan {
	private int num1;
	private int num2;
	
	public int process() {
		int result = 1;
		
		result = num1 * num2;
		
		return result;
	}

	public int getNum1() {
		return num1;
	}

	public void setNum1(int num1) {
		this.num1 = num1;
	}

	public int getNum2() {
		return num2;
	}

	public void setNum2(int num2) {
		this.num2 = num2;
	}
	
	
}
