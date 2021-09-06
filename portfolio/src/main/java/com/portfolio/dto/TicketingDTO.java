package com.portfolio.dto;

public class TicketingDTO {

	private int rownum;
	private String userID;
	private String movieName;
	private String movieTime;
	private String movieSeat;
	private String movieDay;
	private int ticketingSn;
	
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public String getMovieSeat() {
		return movieSeat;
	}
	public void setMovieSeat(String movieSeat) {
		this.movieSeat = movieSeat;
	}
	public String getMovieTime() {
		return movieTime;
	}
	public void setMovieTime(String movieTime) {
		this.movieTime = movieTime;
	}
	public String getMovieDay() {
		return movieDay;
	}
	public void setMovieDay(String movieDay) {
		this.movieDay = movieDay;
	}
	public int getTicketingSn() {
		return ticketingSn;
	}
	public void setTicketingSn(int ticketingSn) {
		this.ticketingSn = ticketingSn;
	}

	@Override
	public String toString() {
		return "TicketingDTO [userID=" + userID + ", movieName=" + movieName + ", movieTime=" + movieTime + ", movieSeat=" + movieSeat + ", movieDay=" + movieDay + "]";
	}
}
