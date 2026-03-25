package com.hospital.dao;


import java.sql.*;


public class PatientDAO {
public static void registerPatient(String name, String email, String phone) {
try (Connection con = DBConnection.getConnection()) {
String sql = "INSERT INTO patients(name, email, phone) VALUES (?,?,?)";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, email);
ps.setString(3, phone);
ps.executeUpdate();
} catch (Exception e) {
e.printStackTrace();
}
}
}