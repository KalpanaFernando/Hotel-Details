package Register;

public class user {
  private int Hotel_ID;
  private String fname;
  private String lname;
  private String regNo;
  private String email;
  private String phone;
  private String location;
  private String available;
  private String unavailable;
  private String  hotelRating;
  private String unavailableDates;
  private String description;
  
public user(int hotel_ID, String fname, String lname, String regNo, String email, String phone, String location,
		String available, String unavailable, String hotelRating, String unavailableDates, String description) {

	Hotel_ID = hotel_ID;
	this.fname = fname;
	this.lname = lname;
	this.regNo = regNo;
	this.email = email;
	this.phone = phone;
	this.location = location;
	this.available = available;
	this.unavailable = unavailable;
	this.hotelRating = hotelRating;
	this.unavailableDates = unavailableDates;
	this.description = description;
}

public int getHotel_ID() {
	return Hotel_ID;
}

public String getFname() {
	return fname;
}

public String getLname() {
	return lname;
}

public String getRegNo() {
	return regNo;
}

public String getEmail() {
	return email;
}

public String getPhone() {
	return phone;
}

public String getLocation() {
	return location;
}

public String getAvailable() {
	return available;
}

public String getUnavailable() {
	return unavailable;
}

public String getHotelRating() {
	return hotelRating;
}

public String getUnavailableDates() {
	return unavailableDates;
}

public String getDescription() {
	return description;
}


  
  


}
