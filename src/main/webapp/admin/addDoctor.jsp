<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Doctor</title>
<link rel="stylesheet" href="../css/styles.css">
</head>
<body>

<!-- NAVBAR MUST BE FIRST -->
<div class="navbar">
    <div class="nav-left">
        🏥 Hospital Appointment System
    </div>
    <div class="nav-right">
        <a href="viewDoctors.jsp" class="nav-btn">View Doctors</a>
    </div>
</div>

<!-- CONTENT -->
<div class="page-content">
    <div class="container">
        <h2>Add Doctor</h2>

        <form action="../AddDoctorServlet" method="post">
            <label>Name</label>
            <input type="text" name="name" required>

            <label>Specialization</label>
            <input type="text" name="specialization" required>

            <input type="submit" value="Add Doctor" class="btn">
        </form>
    </div>
</div>

</body>

</html>
