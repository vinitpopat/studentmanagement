<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Complaint</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body class="container mt-4">

    <h2 class="mb-4">Add Complaint</h2>

    <form action="addcomplaints" method="post" class="card p-4 shadow-sm">

        <div class="mb-3">
            <label class="form-label">Complaint Type</label>
            <input type="text" class="form-control" name="complaintType" placeholder="Enter complaint type" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Description</label>
            <textarea class="form-control" name="description" rows="4" placeholder="Enter details" required></textarea>
        </div>

        <button type="submit" class="btn btn-success">Submit</button>
        <a href="/complaints" class="btn btn-secondary">Cancel</a>
    </form>

</body>
</html>
