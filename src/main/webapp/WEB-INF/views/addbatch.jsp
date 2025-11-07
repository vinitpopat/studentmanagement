<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Batch</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #e3f2fd, #ffffff);
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: 40px auto;
            background: #fff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0,0,0,0.15);
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }
        label {
            display: block;
            margin-top: 15px;
            color: #444;
            font-weight: bold;
        }
        input[type="text"], input[type="date"], input[type="number"], select, textarea {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 14px;
        }
        textarea {
            resize: none;
            height: 80px;
        }
        input[type="submit"], input[type="reset"] {
            background: #007bff;
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            border-radius: 8px;
            margin-top: 20px;
            width: 48%;
            cursor: pointer;
            transition: background 0.3s;
        }
        input[type="reset"] {
            background: #6c757d;
        }
        input[type="submit"]:hover {
            background: #0056b3;
        }
        input[type="reset"]:hover {
            background: #5a6268;
        }
        .btn-group {
            display: flex;
            justify-content: space-between;
        }
        .message {
            color: green;
            text-align: center;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add New Batch</h2>

        <%-- Display success or error message --%>
        <%
            String message = request.getParameter("msg");
            if (message != null) {
        %>
            <div class="message"><%= message %></div>
        <%
            }
        %>

        <form action="savebatch" method="post">
            <label for="batchId">Batch ID:</label>
            <input type="text" id="batchId" name="batch_id" required>

            <label for="batchName">Batch Name:</label>
            <input type="text" id="batchName" name="batch_name" required>

            <label for="courseName">Course Name:</label>
            <input type="text" id="courseName" name="course_name" required>

            <label for="subject">Subject:</label>
            <select id="subject" name="subject" required>
                <option value="">-- Select Subject --</option>
                <option value="C">C</option>
                <option value="C++">C++</option>
                <option value="HTML">HTML</option>
                <option value="CSS">CSS</option>
                <option value="JavaScript">JavaScript</option>
            </select>

            <label for="startDate">Start Date:</label>
            <input type="date" id="startDate" name="start_date" required>

            <label for="mode">Mode:</label>
            <select id="mode" name="mode" required>
                <option value="">-- Select Mode --</option>
                <option value="Online">Online</option>
                <option value="Offline">Offline</option>
                <option value="Hybrid">Hybrid</option>
            </select>
            
            <label>Duration:</label>
            <input type="text" name="duration" placeholder="e.g. 3 Months"><br>

            <label for="instructor">Instructor Name:</label>
            <input type="text" id="instructor" name="instructor" required>

            <label for="totalSeats">Total Seats:</label>
            <input type="number" id="totalSeats" name="total_seats" min="1" required>

            <label for="description">Batch Description:</label>
            <textarea id="description" name="description" placeholder="Enter short description about the batch..."></textarea>

            <div class="btn-group">
                <input type="submit" value="Add Batch">
                <input type="reset" value="Clear Form">
            </div>
        </form>
    </div>
</body>
</html>
