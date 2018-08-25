package com.book;

public class Address {
	private String streetLine;
	private String city;
	private String state;
	private String zipCode;
	private String country;

	public String getStreetLine() {
		return streetLine;
	}

	public void setStreetLine(String streetLine) {
		this.streetLine = streetLine;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Override
	public String toString() {
		return "Address [streetLine=" + streetLine + ", city=" + city + ", state=" + state + ", zipCode=" + zipCode
				+ ", country=" + country + "]";
	}

}
