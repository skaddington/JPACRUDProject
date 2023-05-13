package com.skilldistillery.library.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Book {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String title;
	@Column(name = "author_first_name")
	private String authorFirstName;
	@Column(name = "author_last_name")
	private String authorLastName;
	@Column(name = "publish_year")
	private Integer publishYear;
	private String publisher;
	private String series;
	@Column(name = "occurrence_in_series")
	private int occurrenceInSeries;
	private String medium;
	@Column(name = "number_of_pages")
	private int numberOfPages;
	private String synopsis;
	@Column(name = "book_cover")
	private String bookCover;

	public Book() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthorFirstName() {
		return authorFirstName;
	}

	public void setAuthorFirstName(String authorFirstName) {
		this.authorFirstName = authorFirstName;
	}

	public String getAuthorLastName() {
		return authorLastName;
	}

	public void setAuthorLastName(String authorLastName) {
		this.authorLastName = authorLastName;
	}

	public Integer getPublishYear() {
		return publishYear;
	}

	public void setPublishYear(Integer publishYear) {
		this.publishYear = publishYear;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getSeries() {
		return series;
	}

	public void setSeries(String series) {
		this.series = series;
	}

	public int getOccurrenceInSeries() {
		return occurrenceInSeries;
	}

	public void setOccurrenceInSeries(int occurrenceInSeries) {
		this.occurrenceInSeries = occurrenceInSeries;
	}

	public String getMedium() {
		return medium;
	}

	public void setMedium(String medium) {
		this.medium = medium;
	}

	public int getNumberOfPages() {
		return numberOfPages;
	}

	public void setNumberOfPages(int numberOfPages) {
		this.numberOfPages = numberOfPages;
	}

	public String getSynopsis() {
		return synopsis;
	}

	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}

	public String getBookCover() {
		return bookCover;
	}

	public void setBookCover(String bookCover) {
		this.bookCover = bookCover;
	}

	@Override
	public String toString() {
		return "Book [id=" + id + ", title=" + title + ", authorFirstName=" + authorFirstName + ", authorLastName="
				+ authorLastName + ", publishYear=" + publishYear + ", publisher=" + publisher + ", series=" + series
				+ ", occurrenceInSeries=" + occurrenceInSeries + ", medium=" + medium + ", numberOfPages="
				+ numberOfPages + ", synopsis=" + synopsis + ", bookCover=" + bookCover + "]";
	}

}