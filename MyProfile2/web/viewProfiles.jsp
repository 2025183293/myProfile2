<%@ page import="java.util.List" %>
<%@ page import="com.yourpackage.ProfileBean" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All Student Profiles</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background: #f0f2f5; padding: 30px; }
        .container { background: white; padding: 20px; border-radius: 10px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { padding: 12px; border: 1px solid #ddd; text-align: left; }
        th { background-color: #2A9D8F; color: white; }
        .btn-delete { color: #e76f51; text-decoration: none; font-weight: bold; border: 1px solid #e76f51; padding: 5px 10px; border-radius: 5px; }
        .btn-delete:hover { background: #e76f51; color: white; }
    </style>
</head>
<body>
<div class="container">
    <h2 style="text-align:center; color: #333;">Registered Student Profiles</h2>
    
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Student ID</th>
                <th>Program</th>
                <th>Hobbies</th>
                <th>Introduction</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
        <%
            List<ProfileBean> profiles = (List<ProfileBean>) getServletContext().getAttribute("allProfiles");
            
            if (profiles != null && !profiles.isEmpty()) {
                for (ProfileBean p : profiles) {
        %>
            <tr>
                <td><%= p.getName() %></td>
                <td><%= p.getStudentID() %></td>
                <td><%= p.getProgram() %></td>
                <td><%= p.getHobbies() %></td>
                <td><%= p.getIntro() %></td>
                <td>
                    <a href="DeleteServlet?studentID=<%= p.getStudentID() %>" 
                       class="btn-delete" 
                       onclick="return confirm('Are you sure you want to delete this profile?')">Delete</a>
                </td>
            </tr>
        <%      
                }
            } else { 
        %>
            <tr>
                <td colspan="6" style="text-align:center;">No profiles available.</td>
            </tr>
        <% } %>
        </tbody>
    </table>

    <div style="text-align:center; margin-top: 20px;">
        <a href="index.html" style="color: #264653; text-decoration: none; font-weight: bold;">+ Add New Student</a>
    </div>
</div>
</body>
</html>