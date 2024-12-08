<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Class Schedule</title>
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

        .container table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .container th, .container td {
            text-align: left;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        .container th {
            background-color: #f8f9fa;
            font-weight: bold;
        }

        .container td {
            background-color: #ffffff;
        }

        .container tr:hover {
            background-color: #f1f1f1;
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

            .container table {
                font-size: 14px;
            }
        }
    </style>
</head>

<body>

    <!-- Header -->
    <header class="header">
        <h2>Faculty Portal - View Class Schedule</h2>
    </header>

    <!-- Main Content Container -->
    <div class="container">
        <h1>Your Class Schedule</h1>

        <!-- Table for Class Schedule -->
        <table>
            <thead>
                <tr>
                    <th>Course Code</th>
                    <th>Course Name</th>
                    <th>Instructor</th>
                    <th>Schedule</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>CS101</td>
                    <td>Introduction to Computer Science</td>
                    <td>Geetha</td>
                    <td>Monday & Wednesday - 10:00 AM - 12:00 PM</td>
                </tr>
                <tr>
                    <td>MA202</td>
                    <td>Discrete Mathematics</td>
                    <td>Prof. Smitha</td>
                    <td>Tuesday & Thursday - 1:00 PM - 3:00 PM</td>
                </tr>
                <tr>
                    <td>PH301</td>
                    <td>Physics I</td>
                    <td>Dr. Raju</td>
                    <td>Monday & Friday - 9:00 AM - 11:00 AM</td>
                </tr>
                <!-- More rows can be added dynamically via backend -->
            </tbody>
        </table>
    </div>

</body>

</html>
