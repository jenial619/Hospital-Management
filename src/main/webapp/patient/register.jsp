<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/styles.css">
<style>
/* ===== Centered Auth Page (Register / Login) ===== */
.auth-page {
    min-height: calc(100vh - 60px); /* subtract navbar height */
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
}

.container {
    background: #ffffff;
    width: 100%;
    max-width: 450px;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.12);
}

form {
    width: 100%;
}

form label {
    display: block;
    font-weight: 600;
    margin-bottom: 6px;
    color: #333;
}

form input, form select {
    width: 100%;
    padding: 10px 12px;
    margin-bottom: 18px;
    border-radius: 6px;
    border: 1px solid #ccc;
    font-size: 14px;
}

</style>
<title>register patients</title>
</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <div class="nav-left">
        🏥 Hospital Appointment System
    </div>
</div>

<!-- Centered Registration Form -->
<div class="auth-page">
    <div class="container">
        <h2>Patient Registration</h2>

        <form action="../RegisterPatientServlet" method="post">
            <label>Name</label>
            <input type="text" name="name" required>

            <label>Email</label>
            <input type="email" name="email" required>

            <label>Age</label>
            <input type="number" name="age" required>

            <label>Phone</label>
            <input type="number" name="phone" required>

            <input type="submit" value="Register" class="btn">
        </form>
    </div>
</div>

</body>

</html>