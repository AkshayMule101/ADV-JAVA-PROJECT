package com.cdac.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
public class TicketB {
	@Id
	@Column(name = "TicketB_id")
	@GeneratedValue
	private int ticketBId;
	@Column(name = "source_name")
	private String source;
	@Column(name = "desti_name")
	private String destinatation;
	private float price;
	@Column(name = "booking_date")
	private String Date;
	private int userId;
	public TicketB() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TicketB(int userId) {
		super();
		this.userId = userId;
	}
	public int getTicketBId() {
		return ticketBId;
	}
	public void setTicketBId(int ticketBId) {
		this.ticketBId = ticketBId;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestinatation() {
		return destinatation;
	}
	public void setDestinatation(String destinatation) {
		this.destinatation = destinatation;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}

}
