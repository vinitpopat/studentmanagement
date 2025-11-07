<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
    <title>Customer Complaint Form</title>
    <style>
        /* General Page Styling */
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background-color: #f9f9f9;
            display: flex;
        }

        /* Sidebar Navigation */
        .sidebar {
            width: 220px;
            background-color: #0066ff;
            height: 100vh;
            color: white;
            position: fixed;
            top: 0;
            left: 0;
            padding-top: 30px;
        }

        .sidebar h2 {
            text-align: center;
            font-size: 20px;
            margin-bottom: 30px;
        }

        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }

        .sidebar ul li {
            margin: 15px 0;
        }

        .sidebar ul li a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 10px 25px;
            font-weight: 500;
            transition: 0.3s;
        }

        .sidebar ul li a:hover,
        .sidebar ul li a.active {
            background-color: #0047b3;
            border-left: 4px solid #ffcc00;
        }

        /* Main content area */
        .main-content {
            margin-left: 240px;
            padding: 30px;
            width: calc(100% - 240px);
        }

        .main-content h1 {
            text-align: center;
            color: #333;
        }

        .main-content p {
            text-align: center;
            color: #555;
        }

        /* Complaint Form */
        form {
            width: 60%;
            margin: 30px auto;
            background: #fff;
            padding: 25px 35px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        fieldset {
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
            padding: 15px;
        }

        legend {
            font-weight: bold;
            color: #0047b3;
        }

        label {
            display: inline-block;
            width: 150px;
            margin-bottom: 8px;
            color: #333;
        }

        input, select, textarea {
            width: 60%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        textarea {
            resize: none;
        }

        button {
            background-color: #0047b3;
            color: white;
            border: none;
            padding: 10px 25px;
            border-radius: 5px;
            font-size: 15px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #003380;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .sidebar {
                width: 180px;
            }

            .main-content {
                margin-left: 200px;
            }

            form {
                width: 90%;
            }

            label, input, select, textarea {
                width: 100%;
                display: block;
            }
        }
    </style>
    
</head>
<body>

```
<h1 style="text-align:center;">File a Complaint</h1>
<p style="text-align:center;">Please provide the details of your concern below.</p>

<form method="POST" action="/submitComplaint">

    <fieldset>
        <legend>Contact Information</legend>

        <label for="fullName">Full Name:</label>
        <input type="text" name="full_name" id="fullName" required /><br/>

        <label for="rollNo">Roll No:</label>
        <input type="text" name="roll_no" id="rollNo" required /><br/>

        <label for="email">Email Address:</label>
        <input type="email" name="email" id="email" required /><br/>
    </fieldset>

    <fieldset>
        <legend>Complaint Details</legend>

        <label for="complaintId">Complaint ID:</label>
        <input type="text" name="complaint_id" id="complaintId" /><br/>

        <label for="complaintType">Complaint Category:</label>
        <select name="complaint_type" id="complaintType">
            <option value="">-- Select Type --</option>
            <option value="Product">Product Issue</option>
            <option value="Service">Service Issue</option>
            <option value="Billing">Billing Problem</option>
            <option value="Other">Other</option>
        </select><br/>

        <label for="description">Detailed Description:</label><br/>
        <textarea name="description" id="description" rows="5" cols="50" required></textarea><br/>
    </fieldset>

    <div style="text-align:center;">
        <button type="submit">Submit Complaint</button>
    </div>
</form>
```

</body>
</html>

