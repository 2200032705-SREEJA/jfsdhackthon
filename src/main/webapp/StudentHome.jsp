<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Home</title>
    <style>
        /* Global Styles */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fc;
            color: #333;
        }

        /* Header Styling */
        .header {
            background-color: #007bff;
            color: white;
            padding: 20px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .header h2 {
            margin: 0;
        }

        /* Main Content Styling */
        .container {
            max-width: 900px;
            margin: 30px auto;
            padding: 30px;
            background-color: white;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .container h1 {
            font-size: 28px;
            margin-bottom: 20px;
            text-align: center;
        }

        /* Links Styling */
        ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        li {
            margin: 20px 0;
        }

        a {
            color: #007bff;
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Button Styling */
        .logoutButton {
            display: block;
            margin: 30px auto;
            padding: 12px 20px;
            font-size: 16px;
            background-color: #dc3545;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            width: fit-content;
        }

        .logoutButton:hover {
            background-color: #c82333;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            .header {
                padding: 15px;
            }

            .container h1 {
                font-size: 24px;
            }

            a {
                font-size: 16px;
            }
        }
    </style>
</head>

<body>

    <!-- Header -->
    <div class="header">
        <h2>Welcome to the Student Portal</h2>
    </div>

    <!-- Main Content -->
    <div class="container">
        <h1>Student Dashboard</h1>
        <p>Select an option below to proceed:</p>

        <ul>
            <li><a href="viewSchedule.jsp">View Class Schedule</a></li>
            <li><a href="viewGrades.jsp">View Grades</a></li>
            <li><a href="updateProfile.jsp">Update Profile</a></li>
        </ul>

        <!-- Logout Button -->
        <button class="logoutButton" onclick="logout()">Logout</button>
    </div>

    <!-- JavaScript -->
    <script type="text/javascript">
        function logout() {
            fetch('http://localhost:8080/logout', {
                method: 'POST',
                credentials: 'include' // If using cookies for session
            })
            .then(response => {
                if (response.ok) {
                    window.location.href = "login.jsp"; // Redirect to login page
                } else {
                    alert("Error logging out. Please try again.");
                }
            })
            .catch(error => alert("Logout failed: " + error.message));
        }
    </script>

</body>

</html>
