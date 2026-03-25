package com.hospital.servlet;


import com.hospital.dao.DoctorDAO;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddDoctorServlet extends HttpServlet {
protected void doPost(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException {
DoctorDAO.addDoctor(req.getParameter("name"), req.getParameter("specialization"));
// ✅ Correct redirect
res.sendRedirect(req.getContextPath() + "/admin/viewDoctors.jsp");
}
}