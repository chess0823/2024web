package day1.prac;

public class 계산기 {
	int su1;
	int su2;
	public 계산기(int su1, int su2) {
		
		this.su1 = su1;
		this.su2 = su2;
	}
	
	
	public int getSu1() {
		return su1;
	}


	public void setSu1(int su1) {
		this.su1 = su1;
	}


	public int getSu2() {
		return su2;
	}


	public void setSu2(int su2) {
		this.su2 = su2;
	}


	@Override
	public String toString() {
		return "계산기 [su1=" + su1 + ", su2=" + su2 + "]";
	}
	int add(int n1, int n2) {
		return n1+n2;
	}
	int min(int n1, int n2) {
		return n1-n2;
	}
	int mul(int n1, int n2) {
		return n1 * n2;
	}
	int div(int n1, int n2) {
		return n1 / n2;
	}
	
}
