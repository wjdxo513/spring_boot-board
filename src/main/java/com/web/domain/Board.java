package com.web.domain;
/*drop TABLE db.board;
CREATE TABLE db.board (
	id INT(11) unsigned NOT NULL AUTO_INCREMENT,
	name VARCHAR(64) NOT NULL,
	password VARCHAR(64) NOT NULL,
	title VARCHAR(255) NOT NULL,
	content VARCHAR(2048) NOT NULL,
	sysdate date NOT NULL,
	type VARCHAR(64) NOT NULL,
    PRIMARY KEY (id)
);*/
public class Board {
	private int id;
	private String name;
	private String password;
	private String title;
	private String content;
	private String sysdate;
	private String type;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getSysdate() {
		return sysdate;
	}
	public void setSysdate(String sysdate) {
		this.sysdate = sysdate;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Board() {
		// TODO Auto-generated constructor stub
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Board(int id, String name, String password, String title, String content, String sysdate, String type) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.title = title;
		this.content = content;
		this.sysdate = sysdate;
		this.type = type;
	}
}
