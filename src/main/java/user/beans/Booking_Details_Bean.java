package user.beans;

public class Booking_Details_Bean {

	private String userId;
	private String userName;
	private String flightId;
	private String flightName;
	private String phoneNo;
	private int totalSeat;
	private int fairPrice;
	private int totalPaid;
	private String bankName;
	
	public Booking_Details_Bean() {
		
	}

	public Booking_Details_Bean(String userId, String userName, String flightId, String flightName, String phoneNo,
			int totalSeat, int fairPrice, int totalPaid, String bankName) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.flightId = flightId;
		this.flightName = flightName;
		this.phoneNo = phoneNo;
		this.totalSeat = totalSeat;
		this.fairPrice = fairPrice;
		this.totalPaid = totalPaid;
		this.bankName = bankName;
	}

	@Override
	public String toString() {
		return "Booking_Details_Bean [userId=" + userId + ", userName=" + userName + ", flightId=" + flightId
				+ ", flightName=" + flightName + ", phoneNo=" + phoneNo + ", totalSeat=" + totalSeat + ", fairPrice="
				+ fairPrice + ", totalPaid=" + totalPaid + ", bankName=" + bankName + "]";
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getFlightId() {
		return flightId;
	}

	public void setFlightId(String flightId) {
		this.flightId = flightId;
	}

	public String getFlightName() {
		return flightName;
	}

	public void setFlightName(String flightName) {
		this.flightName = flightName;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public int getTotalSeat() {
		return totalSeat;
	}

	public void setTotalSeat(int totalSeat) {
		this.totalSeat = totalSeat;
	}

	public int getFairPrice() {
		return fairPrice;
	}

	public void setFairPrice(int fairPrice) {
		this.fairPrice = fairPrice;
	}

	public int getTotalPaid() {
		return totalPaid;
	}

	public void setTotalPaid(int totalPaid) {
		this.totalPaid = totalPaid;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	
	
	
	
	
}
