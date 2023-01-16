package admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import admin.beans.FlightScheduleDetails_Bean;
import admin.beans.Flight_bean;
import connections.Conn;
import user.beans.UserBean;

public class Admin_Dao {

	public static ArrayList<Flight_bean> getAllFlightDetails() {

		ArrayList<Flight_bean> arr_flight = new ArrayList<Flight_bean>();
		Connection con = Conn.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("select * from flight_details");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Flight_bean fb = new Flight_bean(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getInt(6), rs.getString(7), rs.getInt(8));
				arr_flight.add(fb);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return arr_flight;

	}

	public static boolean deleteFlightDetails(String flight_id) {

		Connection con = Conn.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement("delete from flight_details where flight_id=?");
			ps.setString(1, flight_id);

			int count = ps.executeUpdate();

			if (count > 0) {
				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	public static ArrayList<FlightScheduleDetails_Bean> getFlightScheduleDetails() {

		ArrayList<FlightScheduleDetails_Bean> arr_flight_sb = new ArrayList<FlightScheduleDetails_Bean>();
		Connection con = Conn.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("select * from flight_schedule_details");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				FlightScheduleDetails_Bean fsb = new FlightScheduleDetails_Bean(rs.getString(1), rs.getString(2),rs.getDate(3),rs.getString(4));
				arr_flight_sb.add(fsb);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return arr_flight_sb;

	}

	public static Flight_bean getFlightById(String flightId) {
		Flight_bean fb = null;

		Connection con = Conn.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement("select * from flight_details where flight_id=?");
			ps.setString(1, flightId);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				fb = new Flight_bean(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getInt(6), rs.getString(7), rs.getInt(8));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return fb;
	}

	public static boolean updateFlightDetails(Flight_bean flight, String flight_details_id)

	{
		Connection con = Conn.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(
					"update flight_details set flight_id=?,flight_name=?,flight_source=?,flight_destination=?,flight_etd=?,flight_sitting_capacity=?,flight_reservation_type=?,flight_reservation_capacity=? where flight_id=?");

			ps.setString(1, flight.getFlightId());
			ps.setString(2, flight.getFlightName());
			ps.setString(3, flight.getFlightSource());
			ps.setString(4, flight.getFlightDestination());
			ps.setString(5, flight.getFlightEtd());
			ps.setInt(6, flight.getFlightSittingCapacity());
			ps.setString(7, flight.getFlightReservationType());
			ps.setInt(8, flight.getFlightReservationCapacity());
			ps.setString(9, flight_details_id);

			int count = ps.executeUpdate();

			if (count > 0) {
				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public static boolean updateFlightScheduleDetails(FlightScheduleDetails_Bean fsb, String flight_schedule_id) {

		Connection con = Conn.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(
					"update flight_schedule_details set flight_id=?,fligh_name=?,available_days=?,fair_price=? where flight_id=?");
			ps.setString(1, fsb.getFlightId());
			ps.setString(2, fsb.getFlightName());
			ps.setDate(3, fsb.getAvailableDays());
			ps.setString(4, fsb.getFairPrice());
			ps.setString(5, flight_schedule_id);

			int count = ps.executeUpdate();

			
			if (count > 0) {
				
				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	public static FlightScheduleDetails_Bean getFlightScheduleDetailsById(String flight_id)
	{
      FlightScheduleDetails_Bean fsb=null;
		Connection con=Conn.getConnection();
		
		try
		{
			PreparedStatement ps=con.prepareStatement("select * from flight_schedule_details where flight_id=?");
			ps.setString(1, flight_id);
			
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				fsb=new FlightScheduleDetails_Bean(rs.getString(1), rs.getString(2), rs.getDate(3),rs.getString(4));
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return fsb;
	}
	
	public static boolean addFlightDetails(Flight_bean fb)
	{
		
           Connection con=Conn.getConnection();
		
		try
		{
			PreparedStatement ps=con.prepareStatement("insert into flight_details values(?,?,?,?,?,?,?,?)");
			ps.setString(1, fb.getFlightId());
			ps.setString(2, fb.getFlightName());
			ps.setString(3, fb.getFlightSource());
			ps.setString(4, fb.getFlightDestination());
			ps.setString(5, fb.getFlightEtd());
			ps.setInt(6, fb.getFlightSittingCapacity());
			ps.setString(7, fb.getFlightReservationType());
			ps.setInt(8, fb.getFlightReservationCapacity());
			
			
			int count=ps.executeUpdate();
			
			if(count>0)
			{
				return true;
			}
			
			
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
	}
	
	public static boolean deleteFlightScheduledDetails(String flight_id)
	{
		Connection con = Conn.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement("delete from flight_schedule_details where flight_id=?");
			ps.setString(1, flight_id);

			int count = ps.executeUpdate();

			if (count > 0) {
				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;

	}
	
	public static ArrayList<UserBean> getAllUser()
	{
		ArrayList<UserBean> user_arr=new ArrayList<UserBean>();
		
		Connection con = Conn.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement("select * from user_details");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				UserBean user_bean=new UserBean(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10));
			    user_arr.add(user_bean);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	      return user_arr;	
	}
	
	public static boolean deleteUserBooking(String user_id)
	{
		Connection con = Conn.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement("delete from flight_book where user_id=?");
			ps.setString(1, user_id);

			int count = ps.executeUpdate();

			if (count > 0) {
				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;

	}
	
}
