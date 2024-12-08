<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Role-Based Login</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
        }

        .loginWindow {
            width: 350px;
            background-color: white;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 30px;
            box-sizing: border-box;
            text-align: center;
        }

        .loginHeader {
            font-size: 24px;
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
            padding-bottom: 10px;
        }

        select, input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-top: 10px;
            margin-bottom: 20px;
            border: 1px solid #bdc3c7;
            border-radius: 5px;
            font-size: 14px;
            background-color: #f9f9f9;
        }

        .signinButton {
            background-color: #007bff;
            color: white;
            padding: 12px;
            width: 100%;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .signinButton:hover {
            background-color: #0056b3;
        }

        #ack {
            font-size: 14px;
            color: red;
        }
    </style>
</head>
<body>
    <div class="loginWindow">
        <div class="loginHeader">Role-Based Login</div>
        <div class="loginContent">
            <!-- Role Selection -->
            <div>Role*</div>
            <select id="role">
                <option value="admin">Admin</option>
                <option value="faculty">Faculty</option>
            </select>

            <!-- ID Input -->
            <div>ID*</div>
            <input type="text" id="userId" placeholder="Enter ID" required />

            <!-- Password Input -->
            <div>Password*</div>
            <input type="password" id="password" placeholder="Enter Password" required />

            <!-- Login Button -->
            <button class="signinButton" onclick="login()">Sign In</button>

            <!-- Acknowledgement -->
            <div id="ack"></div>
        </div>
    </div>

    <!-- JavaScript -->
    <script type="text/javascript">
    function login() {
        // Get form values
        var role = document.getElementById("role").value;
        var userId = document.getElementById("userId").value;
        var password = document.getElementById("password").value;
        var ack = document.getElementById("ack");

        // Basic field validation
        if (!userId || !password) {
            ack.style.color = "red";
            ack.innerText = "Please fill all fields.";
            return;
        }

        // Build request data
        var data = JSON.stringify({
            username: userId,
            password: password
        });

        // API endpoint based on role
        var url = role === "admin"
            ? "http://localhost:8080/admin/adminlogin"
            : "http://localhost:8080/faculty/Facultylogin";

        // API call
        fetch(url, {
            method: "POST",
            headers: {
                'Content-Type': 'application/json'
            },
            body: data
        })
        .then(response => {
            if (!response.ok) {
                // Handle error response
                throw new Error(`Login failed: ${response.status}`);
            }
            return response.text(); // Get response body as text
        })
        .then(responseText => {
            ack.innerHTML = ""; // Clear any previous error messages
            if (role === "admin") {
                location.replace("/AdminHome.jsp"); // Redirect to admin home
            } else {
                location.replace("/FacultyHome.jsp"); // Redirect to faculty home
            }
        })
        .catch(error => {
            ack.style.color = "red";
            ack.innerText = "An error occurred: " + error.message;
        });
    }

    </script>
</body>
</html>
