package com.BookSys.Entity;

//书类
public class Book {

	private String bno;
	private String bname;
	private String bauther;
	private String press;
	private double price;
	
	//加个数量
	private int num;
	private double sunPrice;
	
	public String getBno() {
		return bno;
	}
	public void setBno(String bno) {
		this.bno = bno;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBauther() {
		return bauther;
	}
	public void setBauther(String bauther) {
		this.bauther = bauther;
	}
	public String getPress() {
		return press;
	}
	public void setPress(String press) {
		this.press = press;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Book(String bno, String bname, String bauther, String press,
			double price) {
		super();
		this.bno = bno;
		this.bname = bname;
		this.bauther = bauther;
		this.press = press;
		this.price = price;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public double getSunPrice() {
		return this.getPrice()*this.getNum();
	}
	
	
	
}
