package com.manifestcorp.techreads.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Book {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Long id;
	String title;
	String author;
	String rating;
	String status;
	String date;
	String coverURL;
	
	public Book() {}
	
	public Book(String title) {
		this.title = title;
	}
	
	public Long getId() { return id; }
	public void setId(Long id) { this.id = id; }
	
	public String getTitle() { return title; }
	public void setTitle(String title) { this.title = title; }
	
	public String getAuthor() { return author; }
	public void setAuthor(String author) { this.author = author; }
	
	public String getRating() { return rating; }
	public void setRating(String rating) { this.rating = rating; }
	
	public String getStatus() { return status; }
	public void setStatus(String status) { this.status = status; }
	
	public String getDate() { return date; }
	public void setDate(String date) { this.date = date; }
	
	public String getCoverURL() { return coverURL; }
	public void setCoverURL(String coverURL) { this.coverURL = coverURL; }
}