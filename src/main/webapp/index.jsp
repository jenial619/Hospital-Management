<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hospital Appointment Booking</title>

<style>
    body {
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background: linear-gradient(135deg, #e3f2fd, #f5f7fa);
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    }

    .container {
        background: #ffffff;
        width: 420px;
        padding: 35px;
        border-radius: 12px;
        text-align: center;
        box-shadow: 0 12px 30px rgba(0, 0, 0, 0.15);
    }

    h2 {
        color: #0d47a1;
        margin-bottom: 30px;
        font-size: 24px;
        letter-spacing: 0.5px;
    }

    .btn {
        display: block;
        width: 100%;
        padding: 14px;
        margin: 15px 0;
        border-radius: 8px;
        text-decoration: none;
        font-size: 16px;
        font-weight: 600;
        color: #ffffff;
        background: linear-gradient(135deg, #1976d2, #0d47a1);
        transition: all 0.3s ease;
    }

    .btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 8px 20px rgba(25, 118, 210, 0.4);
    }

    .footer-text {
        margin-top: 25px;
        font-size: 13px;
        color: #777;
    }
</style>

</head>

<body>
    <div class="container">
        <h2>Hospital Appointment Booking</h2>

        <a href="admin/addDoctor.jsp" class="btn">Admin Panel</a>
        <a href="patient/register.jsp" class="btn">Patient Portal</a>

        <div class="footer-text">
            © 2026 Hospital Management System
        </div>
    </div>
</body>
</html>
