<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Faculty Login</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7fa;
            color: #333;
        }
        .login-container {
            width: 300px;
            margin: 100px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }
        .login-container input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .login-container button {
            width: 100%;
            padding: 10px;
            background-color: #0066cc;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }
        .login-container button:hover {
            background-color: #004a99;
        }
    </style>
</head>
<body>

    <div class="login-container">
        <h2>Faculty Login</h2>
        <form id="loginForm" onsubmit="login(event)">
            <input type="number" id="facultyid" placeholder="Faculty ID" required />
            <input type="password" id="password" placeholder="Password" required />
            <button type="submit">Login</button>
        </form>
        <p id="error-message" style="color: red;"></p>
    </div>

    <script>
        function login(event) {
            event.preventDefault();

            var facultyid = document.getElementById("facultyid").value;
            var password = document.getElementById("password").value;

            var url = "http://localhost:8080/faculty/login";
            var data = JSON.stringify({
                "facultyid": facultyid,
                "password": password
            });

            var xhr = new XMLHttpRequest();
            xhr.open("POST", url, true);
            xhr.setRequestHeader("Content-Type", "application/json");
            xhr.onload = function() {
                if (xhr.status === 200) {
                    alert("Login successful!");
                    window.location.href = "facultyDashboard.jsp";  // Redirect to Faculty Dashboard after successful login
                } else {
                    document.getElementById("error-message").innerText = "Invalid Faculty ID or Password.";
                }
            };
            xhr.send(data);
        }
    </script>

</body>
</html>
