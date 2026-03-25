package com.hospital.dao;


import java.sql.*;


public class DoctorDAO {
public static void addDoctor(String name, String specialization) {
try (Connection con = DBConnection.getConnection()) {
String sql = "INSERT INTO doctors(name, specialization) VALUES (?, ?)";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, specialization);
ps.executeUpdate();
} catch (Exception e) {
e.printStackTrace();
}
}
}