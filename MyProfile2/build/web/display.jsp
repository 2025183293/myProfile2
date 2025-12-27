<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Your Profile</title>
    <style>
        body {
            background: #e8f0fe;
            font-family: Arial;
            padding: 40px;
        }
        .card {
            width: 600px;
            margin: auto;
            background: white;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 0 12px #bbb;
        }
        h1 { color: #333; }
        .label { font-weight: bold; color: #555; }
        .value { margin-bottom: 10px; }
    </style>
</head>
<body>

<div class="card">
    <h1>Your Personal Profile</h1>

    <p><span class="label">Name:</span> <span class="value">${name}</span></p>
    <p><span class="label">Student ID:</span> <span class="value">${studentID}</span></p>
    <p><span class="label">Program:</span> <span class="value">${program}</span></p>
    <p><span class="label">Email:</span> <span class="value">${email}</span></p>
    <p><span class="label">Hobbies:</span> <span class="value">${hobbies}</span></p>
    <p><span class="label">Self Introduction:</span></p>
    <p>${intro}</p>
</div>

</body>
</html>

