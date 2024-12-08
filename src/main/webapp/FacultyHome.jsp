<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Portal</title>
    <style>
        /* Global Styles */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f7f7f7;
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        h1, h2 {
            margin: 0;
        }

        /* Header Styling */
        .header {
            background-color: #007bff;
            color: white;
            padding: 20px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Main Content Styling */
        .container {
            flex: 1;
            padding: 30px;
            max-width: 900px;
            margin: 30px auto;
            background-color: white;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .container h1 {
            font-size: 28px;
            margin-bottom: 20px;
            text-align: center;
        }

        .container p {
            font-size: 18px;
            text-align: center;
            margin-bottom: 30px;
        }

        /* Navigation List */
        nav ul {
            list-style: none;
            padding: 0;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        nav li {
            text-align: center;
        }

        nav a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
            padding: 12px 20px;
            display: inline-block;
            border: 2px solid #007bff;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        nav a:hover {
            background-color: #007bff;
            color: white;
            border-color: #0056b3;
        }

        /* Logout Button Styling */
        .logoutButton {
            display: block;
            margin: 30px auto 0;
            padding: 14px 40px;
            font-size: 18px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            transition: background-color 0.3s ease;
            width: fit-content;
        }

        .logoutButton:hover {
            background-color: #0056b3;
        }

        /* Spinner for logout */
        .spinner {
            display: none;
            margin: 20px auto;
            border: 4px solid rgba(0, 0, 0, 0.1);
            border-radius: 50%;
            border-top: 4px solid #007bff;
            width: 40px;
            height: 40px;
            animation: spin 1s linear infinite;
        }

        @keyframes spin {
            from {
                transform: rotate(0deg);
            }
            to {
                transform: rotate(360deg);
            }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            .header {
                padding: 15px;
            }

            nav a {
                font-size: 16px;
                padding: 10px 15px;
            }

            .logoutButton {
                font-size: 16px;
                padding: 12px 35px;
            }
        }
    </style>
</head>
<body>

    <!-- Header -->
    <header class="header">
        <h2>Faculty Portal</h2>
    </header>

    <!-- Main Container -->
    <div class="container">
        <h1>Welcome, Faculty Member!</h1>
        <p>Select an option below to proceed:</p>

        <!-- Navigation Links -->
        <nav>
            <ul>
                <li><a href="ViewSchedule.jsp">View Class Schedule</a></li>
                <li><a href="SubmitGrades.jsp">Submit Student Grades</a></li>
                <li><a href="ManageAttendance.jsp">Manage Attendance</a></li>
                <li><a href="FacultyProfile.jsp">Update Profile</a></li>
            </ul>
        </nav>

        <!-- Logout Button -->
        <button class="logoutButton" onclick="logout()">Logout</button>

        <!-- Logout Spinner -->
        <div id="spinner" class="spinner"></div>
    </div>

    <!-- JavaScript -->
    <script>
        function logout() {
            const spinner = document.getElementById("spinner");
            const logoutButton = document.querySelector(".logoutButton");

            // Show the spinner and disable the button
            spinner.style.display = "block";
            logoutButton.disabled = true;

            // Call the logout API
            fetch('http://localhost:8080/logout', {
                method: 'POST',
                credentials: 'include' // If using cookies for session management
            })
            .then(response => {
                if (!response.ok) {
                    throw new Error("Logout failed: " + response.statusText);
                }
                return response.json(); // Assuming response sends a JSON
            })
            .then(() => {
                alert("Successfully logged out!");
                window.location.href = "Login.jsp"; // Redirect to the login page
            })
            .catch(error => {
                alert("An error occurred during logout: " + error.message);
            })
            .finally(() => {
                spinner.style.display = "none";
                logoutButton.disabled = false;
            });
        }
    </script>
</body>
</html>
