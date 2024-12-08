<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submit Grades</title>
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

        /* Table Styles for displaying students */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f8f9fa;
            font-weight: bold;
        }

        tr:hover {
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

            input, select, button {
                font-size: 14px;
            }

            table {
                font-size: 14px;
            }
        }
    </style>
</head>

<body>

    <!-- Header -->
    <header class="header">
        <h2>Faculty Portal - Submit Grades</h2>
    </header>

    <!-- Main Content Container -->
    <div class="container">
        <h1>Submit Grades for Students</h1>

        <!-- Form to select course and submit grades -->
        <form action="submitGrades" method="POST">
            <div class="form-group">
                <label for="course">Select Course</label>
                <select id="course" name="course" required>
                    <option value="CS101">CS101 - Introduction to Computer Science</option>
                    <option value="MA202">MA202 - Discrete Mathematics</option>
                    <option value="PH301">PH301 - Physics I</option>
                    <!-- Add more courses dynamically as needed -->
                </select>
            </div>

            <div class="form-group">
                <label for="studentId">Student ID</label>
                <input type="text" id="studentId" name="studentId" placeholder="Enter Student ID" required>
            </div>

            <div class="form-group">
                <label for="grade">Grade</label>
                <select id="grade" name="grade" required>
                    <option value="A">A</option>
                    <option value="B">B</option>
                    <option value="C">C</option>
                    <option value="D">D</option>
                    <option value="F">F</option>
                </select>
            </div>

            <button type="submit">Submit Grade</button>
        </form>

        <!-- Table for displaying student grades -->
        <h2>Student Grades</h2>
        <table>
            <thead>
                <tr>
                    <th>Student ID</th>
                    <th>Student Name</th>
                    <th>Grade</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>12345</td>
                    <td>John Doe</td>
                    <td>B</td>
                    <td><button>Edit</button></td>
                </tr>
                <tr>
                    <td>12346</td>
                    <td>Jane Smith</td>
                    <td>A</td>
                    <td><button>Edit</button></td>
                </tr>
                <!-- More rows can be added dynamically -->
            </tbody>
        </table>
    </div>

</body>

</html>
