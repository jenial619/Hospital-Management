<%@ page import="java.sql.*" %>
<%@ page import="com.hospital.dao.DBConnection" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Doctors</title>
    <link rel="stylesheet" href="../css/styles.css">
    <style>
    /* ===== Page Layout ===== */
body {
    margin: 0;
    padding: 0;
    min-height: 100vh;
    background: linear-gradient(135deg, #e3f2fd, #f5f7fa);
    font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    display: flex;
    justify-content: center;
    align-items: flex-start;
}

/* ===== Container ===== */
.container {
    margin-top: 40px;
    background: #ffffff;
    width: 90%;
    max-width: 1000px;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 12px 28px rgba(0, 0, 0, 0.12);
}

/* ===== Heading ===== */
h2 {
    text-align: center;
    color: #0d47a1;
    margin-bottom: 25px;
    font-size: 26px;
}

/* ===== Table Styling ===== */
table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
    font-size: 14px;
}

table th {
    background: linear-gradient(135deg, #1976d2, #0d47a1);
    color: #ffffff;
    padding: 14px;
    text-align: center;
    font-weight: 600;
}

table td {
    padding: 12px;
    text-align: center;
    border-bottom: 1px solid #e0e0e0;
    color: #333;
}

/* ===== Row Hover Effect ===== */
table tr:hover td {
    background-color: #f1f8ff;
}

/* ===== Status Styling ===== */
.status-booked {
    color: #2e7d32;
    font-weight: 600;
}

/* ===== Links ===== */
a {
    display: inline-block;
    margin-top: 20px;
    text-decoration: none;
    color: #1976d2;
    font-weight: 600;
}

a:hover {
    text-decoration: underline;
}

/* ===== Responsive ===== */
@media (max-width: 768px) {
    table {
        font-size: 12px;
    }

    table th, table td {
        padding: 10px;
    }
}
    
    </style>
</head>
<body>

<div class="container">
    <h2>Doctor List</h2>

    <table>
        <tr>
            <th>Doctor ID</th>
            <th>Name</th>
            <th>Specialization</th>
        </tr>

        <%
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;

            try {
                con = DBConnection.getConnection();
                String sql = "SELECT * FROM doctors ORDER BY doctor_id";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();

                if (!rs.isBeforeFirst()) {
        %>
        <tr>
            <td colspan="3" style="text-align:center;">No doctors available</td>
        </tr>
        <%
                }

                while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("doctor_id") %></td>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("specialization") %></td>
        </tr>
        <%
                }
            } catch (Exception e) {
                out.println("<tr><td colspan='3'>Error loading doctors</td></tr>");
                e.printStackTrace();
            } finally {
                try { if (rs != null) rs.close(); } catch (Exception ignored) {}
                try { if (ps != null) ps.close(); } catch (Exception ignored) {}
                try { if (con != null) con.close(); } catch (Exception ignored) {}
            }
        %>
    </table>

    <a href="addDoctor.jsp">➕ Add Doctor</a>
    <a href="../index.jsp">⬅ Back to Home</a>
</div>

</body>
</html>
