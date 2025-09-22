package com.book.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "book")
public class Book {
	@Id
	private int bookId;
	private String bookName;
	private int bookPrice;
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public int getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(int price) {
		this.bookPrice = price;
	}

}
