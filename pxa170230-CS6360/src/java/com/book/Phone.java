package com.book;

public class Phone {
	private int number;

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	@Override
	public String toString() {
		return "Phone [number=" + number + "]";
	}

}
