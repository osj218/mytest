package com.herbmall.test;

//자바빈 - 로직을 담고 있는 자바 클래스
public class SimpleVO {
	//멤버변수 = 프로퍼티 (자바빈에서는 멤버변수를 프로퍼티라고 부른다)
	private String userid;
	private String name;
	private int no;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}

	
}
