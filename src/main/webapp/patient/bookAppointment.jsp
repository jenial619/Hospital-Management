<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>book appointments</title>
<link rel="stylesheet" href="../css/styles.css">
</head>
<body>
 <form action="../BookAppointmentServlet" method="post">
Doctor ID: <input type="number" name="doctorId"/><br/>
Patient ID: <input type="number" name="patientId"/><br/>
Date: <input type="date" name="date"/><br/>
Time: <input type="text" name="time"/><br/>
<input type="submit" value="Book Appointment"/>
</form>
</body>
</html>