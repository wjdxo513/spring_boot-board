package com.web.domain;
/*drop TABLE db.purchase;
CREATE TABLE db.purchase (
	id INT(11) unsigned NOT NULL AUTO_INCREMENT,
	coinType VARCHAR(64) NOT NULL,
	won VARCHAR(64) NOT NULL,
	wallet VARCHAR(255) NOT NULL,
	name VARCHAR(64) NOT NULL,
	phone VARCHAR(64) NOT NULL,
	password VARCHAR(64) NOT NULL,
	content VARCHAR(255) NOT NULL,
	val VARCHAR(64) NOT NULL,
	val2 VARCHAR(64) NOT NULL,
	val3 VARCHAR(64) NOT NULL,
	val4 VARCHAR(64) NOT NULL,
	sysdate date NOT NULL,
	status VARCHAR(64) NOT NULL,
    PRIMARY KEY (id)
);*/
public class Purchase {
	private int id;
	private String coinType;
	private String won;
	private String wallet;
	private String name;
	private String phone;
	private String password;
	private String content;
	private String val;
	private String val2;
	private String val3;
	private String val4;
	private String sysdate;
	private String status;
	public Purchase() {
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCoinType() {
		return coinType;
	}
	public void setCoinType(String coinType) {
		this.coinType = coinType;
	}
	public String getWon() {
		return won;
	}
	public void setWon(String won) {
		this.won = won;
	}
	public String getWallet() {
		return wallet;
	}
	public void setWallet(String wallet) {
		this.wallet = wallet;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getVal() {
		return val;
	}
	public void setVal(String val) {
		this.val = val;
	}
	public String getVal2() {
		return val2;
	}
	public void setVal2(String val2) {
		this.val2 = val2;
	}
	public String getVal3() {
		return val3;
	}
	public void setVal3(String val3) {
		this.val3 = val3;
	}
	public String getVal4() {
		return val4;
	}
	public void setVal4(String val4) {
		this.val4 = val4;
	}
	public String getSysdate() {
		return sysdate;
	}
	public void setSysdate(String sysdate) {
		this.sysdate = sysdate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Purchase(int id, String coinType, String won, String wallet, String name, String phone, String password,
			String content, String val, String val2, String val3, String val4, String sysdate, String status) {
		super();
		this.id = id;
		this.coinType = coinType;
		this.won = won;
		this.wallet = wallet;
		this.name = name;
		this.phone = phone;
		this.password = password;
		this.content = content;
		this.val = val;
		this.val2 = val2;
		this.val3 = val3;
		this.val4 = val4;
		this.sysdate = sysdate;
		this.status = status;
	}
}
