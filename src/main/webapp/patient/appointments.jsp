<%@ page import="java.sql.*" %>
<%@ page import="com.hospital.dao.DBConnection" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Appointments</title>
    <link rel="stylesheet" href="../css/styles.css">
</head>
<body>

<div class="container">
    <h2>My Appointments</h2>

    <table>
        <tr>
            <th>Appointment ID</th>
            <th>Doctor</th>
            <th>Patient</th>
            <th>Date</th>
            <th>Time</th>
            <th>Status</th>
        </tr>

        <%
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;

            try {
                con = DBConnection.getConnection();

                String sql =
                    "SELECT a.appointment_id, d.name AS doctor_name, " +
                    "p.name AS patient_name, a.appointment_date, " +
                    "a.appointment_time, a.status " +
                    "FROM appointments a " +
                    "JOIN doctors d ON a.doctor_id = d.doctor_id " +
                    "JOIN patients p ON a.patient_id = p.patient_id " +
                    "ORDER BY a.appointment_date DESC";

                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();

                while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("appointment_id") %></td>
            <td><%= rs.getString("doctor_name") %></td>
            <td><%= rs.getString("patient_name") %></td>
            <td><%= rs.getDate("appointment_date") %></td>
            <td><%= rs.getString("appointment_time") %></td>
            <td><%= rs.getString("status") %></td>
        </tr>
        <%
                }
            } catch (Exception e) {
                out.println("<tr><td colspan='6'>Error loading appointments</td></tr>");
                e.printStackTrace();
            } finally {
                try { if (rs != null) rs.close(); } catch (Exception ignored) {}
                try { if (ps != null) ps.close(); } catch (Exception ignored) {}
                try { if (con != null) con.close(); } catch (Exception ignored) {}
            }
        %>
    </table>

    <a href="../index.jsp">⬅ Back to Home</a>
</div>

</body>
</html>
