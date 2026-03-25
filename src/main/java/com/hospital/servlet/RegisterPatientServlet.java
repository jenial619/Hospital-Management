package com.hospital.servlet;


import com.hospital.dao.PatientDAO;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterPatientServlet extends HttpServlet {
protected void doPost(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException {
PatientDAO.registerPatient(req.getParameter("name"), req.getParameter("email"), req.getParameter("phone"));
res.sendRedirect("patient/bookAppointment.jsp");
}
}