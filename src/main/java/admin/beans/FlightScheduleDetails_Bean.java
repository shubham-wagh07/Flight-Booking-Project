package admin.beans;

import java.sql.Date;

public class FlightScheduleDetails_Bean {

	private String flightId;
	private String flightName;
	private Date availableDays;
	private String fairPrice;

	public FlightScheduleDetails_Bean() {

	}

	public FlightScheduleDetails_Bean(String flightId, String flightName, Date availableDays, String fairPrice) {

		this.flightId = flightId;
		this.flightName = flightName;
		this.availableDays = availableDays;
		this.fairPrice = fairPrice;
	}

	@Override
	public String toString() {
		return "FlightScheduleDetails_Bean [flightId=" + flightId + ", flightName=" + flightName + ", availableDays="
				+ availableDays + ", fairPrice=" + fairPrice + "]";
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

	public Date getAvailableDays() {
		return availableDays;
	}

	public void setAvailableDays(Date availableDays) {
		this.availableDays = availableDays;
	}

	public String getFairPrice() {
		return fairPrice;
	}

	public void setFairPrice(String fairPrice) {
		this.fairPrice = fairPrice;
	}

}
