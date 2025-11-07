<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String name = request.getParameter("name");
    if (name == null || name.trim().isEmpty()) {
        name = "Guest";
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <style>
        body {
            background: linear-gradient(135deg, #007bff, #6610f2);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            font-family: 'Poppins', sans-serif;
        }

        .welcome-card {
            background: rgba(255, 255, 255, 0.15);
            padding: 50px 70px;
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.2);
            text-align: center;
            backdrop-filter: blur(10px);
            animation: fadeIn 1s ease;
        }

        .welcome-card h1 {
            font-size: 48px;
            margin-bottom: 10px;
        }

        .welcome-card p {
            font-size: 18px;
            font-weight: 300;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>

<body>
    <div class="welcome-card">
        <h1>Welcome, <%= name %> 👋</h1>
        <p>We’re so happy to have you here! Hope you have an amazing and productive day ahead.</p>
    </div>
</body>
</html>
