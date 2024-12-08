<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Profile Update</title>
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

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-size: 16px;
            font-weight: bold;
            display: block;
            margin-bottom: 8px;
        }

        input, select, button {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
        }

        button {
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #218838;
        }

        /* Success Message */
        .success-message {
            background-color: #d4edda;
            color: #155724;
            padding: 15px;
            margin-top: 20px;
            border-radius: 5px;
            text-align: center;
        }

        /* Error Message */
        .error-message {
            background-color: #f8d7da;
            color: #721c24;
            padding: 15px;
            margin-top: 20px;
            border-radius: 5px;
            text-align: center;
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

            input, select, button {
                font-size: 14px;
            }
        }
    </style>
</head>

<body>

    <!-- Header -->
    <header class="header">
        <h2>Faculty Portal - Update Profile</h2>
    </header>

    <!-- Main Content Container -->
    <div class="container">
        <h1>Update Faculty Profile</h1>

        <!-- Form for updating profile details -->
        <form action="updateFacultyProfileServlet" method="POST">
            <!-- First Name -->
            <div class="form-group">
                <label for="firstName">First Name</label>
                <input type="text" id="firstName" name="firstName" placeholder="Enter First Name" value="<%= request.getAttribute("firstName") != null ? request.getAttribute("firstName") : "John" %>" required>
            </div>

            <!-- Last Name -->
            <div class="form-group">
                <label for="lastName">Last Name</label>
                <input type="text" id="lastName" name="lastName" placeholder="Enter Last Name" value="<%= request.getAttribute("lastName") != null ? request.getAttribute("lastName") : "Doe" %>" required>
            </div>

            <!-- Email -->
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter Email" value="<%= request.getAttribute("email") != null ? request.getAttribute("email") : "john.doe@example.com" %>" required>
            </div>

            <!-- Phone Number -->
            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="text" id="phone" name="phone" placeholder="Enter Phone Number" value="<%= request.getAttribute("phone") != null ? request.getAttribute("phone") : "1234567890" %>" required>
            </div>

            <button type="submit">Update Profile</button>
        </form>

        <!-- Display success or error message -->
        <div id="message"></div>
    </div>

</body>

</html>
