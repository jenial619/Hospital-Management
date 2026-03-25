package com.hospital.dao;


import java.sql.*;


public class AppointmentDAO {
public static void bookAppointment(int doctorId, int patientId, String date, String time) {
try (Connection con = DBConnection.getConnection()) {
String sql = "INSERT INTO appointments(doctor_id, patient_id, appointment_date, appointment_time, status) VALUES (?,?,?,?,?)";
PreparedStatement ps = con.prepareStatement(sql);
ps.setInt(1, doctorId);
ps.setInt(2, patientId);
ps.setDate(3, Date.valueOf(date));
ps.setString(4, time);
ps.setString(5, "BOOKED");
ps.executeUpdate();
} catch (Exception e) {
e.printStackTrace();
}
}
}