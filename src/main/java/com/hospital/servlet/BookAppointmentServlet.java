package com.hospital.servlet;


import com.hospital.dao.AppointmentDAO;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookAppointmentServlet extends HttpServlet {
protected void doPost(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException {
AppointmentDAO.bookAppointment(
Integer.parseInt(req.getParameter("doctorId")),
Integer.parseInt(req.getParameter("patientId")),
req.getParameter("date"),
req.getParameter("time")
);
res.sendRedirect("patient/viewAppointments.jsp");
}
}