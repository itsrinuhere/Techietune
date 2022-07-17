package com.library.search;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="library")
public class Library {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="book_id")
	int book_id;
	@Column(name="book_name")
	String book_name;
	@Column(name="book_type")
	String book_type;
	@Column(name="book_category")
	String book_category;
	@Column(name="book_auther")
	String book_auther;
	@Column(name="book_regulation")
	String book_regulation;
	@Column(name="book_tags")
	String book_tags;
	@Column(name="book_description")
	String book_description;
	@Column(name="book_subject")
	String book_subject;
	@Column(name="link")
	String link;
public int getBook_id() {
	return book_id;
}
public void setBook_id(int book_id) {
	this.book_id = book_id;
}
public String getBook_name() {
	return book_name;
}
public void setBook_name(String book_name) {
	this.book_name = book_name;
}
public String getBook_type() {
	return book_type;
}
public void setBook_type(String book_type) {
	this.book_type = book_type;
}
public String getBook_category() {
	return book_category;
}
public void setBook_category(String book_category) {
	this.book_category = book_category;
}
public String getBook_auther() {
	return book_auther;
}
public void setBook_auther(String book_auther) {
	this.book_auther = book_auther;
}
public String getBook_regulation() {
	return book_regulation;
}
public void setBook_regulation(String book_regulation) {
	this.book_regulation = book_regulation;
}
public String getBook_tags() {
	return book_tags;
}
public void setBook_tags(String book_tags) {
	this.book_tags = book_tags;
}
public String getBook_description() {
	return book_description;
}
public void setBook_description(String book_description) {
	this.book_description = book_description;
}
public String getBook_subject() {
	return book_subject;
}
public void setBook_subject(String book_subject) {
	this.book_subject = book_subject;
}
public String getLink() {
	return link;
}
public void setLink(String link) {
	this.link = link;
}
}
