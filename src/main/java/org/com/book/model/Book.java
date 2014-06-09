package org.com.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "BOOKS", schema = "studentdb")
public class Book {

	@Id
	@Column(name="ID")
	@GeneratedValue
	private Integer id;
	
	@Column(name="BOOK_NAME")
	private String name;

	@Column(name="AUTHOR")
	private String author;
	
	@Column(name="PRICE")
	private int price;
	
	@Column(name="QTY")
	private int quantity;
	
	public Integer getId() 
	{return id;}

	
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getAuthor() 
	{return author;}

	public int getPrice() 
	{return price;}

	public int getQuantity() 
	{return quantity;}

	public void setId(Integer id) 
	{this.id = id;}

	

	public void setAuthor(String author) 
	{this.author = author;}

	public void setPrice(int price) 
	{this.price = price;}

	public void setQuantity(int quantity) 
	{this.quantity = quantity;}
}
