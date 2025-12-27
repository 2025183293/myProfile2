<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Profile Saved</title>
    <style>
        body { font-family: Arial; background: #f4f4f4; text-align: center; padding-top: 50px; }
        .card { background: white; width: 400px; margin: auto; padding: 30px; border-radius: 15px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        h2 { color: #2A9D8F; }
        .data-row { text-align: left; margin-bottom: 10px; }
        .label { font-weight: bold; }
    </style>
</head>
<body>
    <div class="card">
        <h2>Profile Saved Successfully!</h2>
        <div class="data-row"><span class="label">Name:</span> ${userProfile.name}</div>
        <div class="data-row"><span class="label">ID:</span> ${userProfile.studentID}</div>
        <div class="data-row"><span class="label">Program:</span> ${userProfile.program}</div>
         <div class="data-row"><span class="label">Hobbies:</span> ${userProfile.hobbies}</div>
          <div class="data-row"><span class="label">Intro:</span> ${userProfile.intro}</div>
        <hr>
        <a href="viewProfiles.jsp">View All Profiles</a> | <a href="index.html">Add Another</a>
    </div>
</body>
</html>