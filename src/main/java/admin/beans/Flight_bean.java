package admin.beans;

public class Flight_bean {

	private String flightId;
	private String flightName;
	private String flightSource;
	private String flightDestination;
	private String flightEtd;
	private int flightSittingCapacity;
	private String flightReservationType;
	private int flightReservationCapacity;

	public Flight_bean() {

	}

	
	
	
	public Flight_bean(String flightId, String flightName, String flightSource, String flightDestination,
			String flightEtd, int flightSittingCapacity, String flightReservationType, int flightReservationCapacity) {
		this.flightId = flightId;
		this.flightName = flightName;
		this.flightSource = flightSource;
		this.flightDestination = flightDestination;
		this.flightEtd = flightEtd;
		this.flightSittingCapacity = flightSittingCapacity;
		this.flightReservationType = flightReservationType;
		this.flightReservationCapacity = flightReservationCapacity;
	}




	@Override
	public String toString() {
		return "Flight_bean [flightId=" + flightId + ", flightName=" + flightName + ", flightSource=" + flightSource
				+ ", flightDestination=" + flightDestination + ", flightEtd=" + flightEtd + ", flightSittingCapacity="
				+ flightSittingCapacity + ", flightReservationType=" + flightReservationType
				+ ", flightReservationCapacity=" + flightReservationCapacity + "]";
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




	public String getFlightSource() {
		return flightSource;
	}




	public void setFlightSource(String flightSource) {
		this.flightSource = flightSource;
	}




	public String getFlightDestination() {
		return flightDestination;
	}




	public void setFlightDestination(String flightDestination) {
		this.flightDestination = flightDestination;
	}




	public String getFlightEtd() {
		return flightEtd;
	}




	public void setFlightEtd(String flightEtd) {
		this.flightEtd = flightEtd;
	}




	public int getFlightSittingCapacity() {
		return flightSittingCapacity;
	}




	public void setFlightSittingCapacity(int flightSittingCapacity) {
		this.flightSittingCapacity = flightSittingCapacity;
	}




	public String getFlightReservationType() {
		return flightReservationType;
	}




	public void setFlightReservationType(String flightReservationType) {
		this.flightReservationType = flightReservationType;
	}




	public int getFlightReservationCapacity() {
		return flightReservationCapacity;
	}




	public void setFlightReservationCapacity(int flightReservationCapacity) {
		this.flightReservationCapacity = flightReservationCapacity;
	}


	
	

}
