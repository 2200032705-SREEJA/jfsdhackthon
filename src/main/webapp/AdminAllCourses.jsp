<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Courses</title>
    <link rel="stylesheet" type="text/css" href="css/course.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            background-color: #f4f7fa;
            color: #333;
        }
        .topnav {
            background-color: #0066cc;
            color: white;
            padding: 16px;
            text-align: center;
            font-size: 26px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .sidebar {
            width: 220px;
            height: 100%;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #00509e;
            padding-top: 25px;
        }
        .sidebar ul {
            list-style-type: none;
            padding-left: 0;
        }
        .sidebar ul li {
            padding: 12px 16px;
            margin-bottom: 10px;
            transition: background-color 0.3s;
        }
        .sidebar ul li a {
            color: #f1f1f1;
            text-decoration: none;
            font-size: 18px;
        }
        .sidebar ul li:hover {
            background-color: #003f7f;
        }
        .container {
            margin-left: 240px;
            padding: 30px;
            background-color: #fff;
            min-height: 100vh;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 30px;
            background-color: #fdfdfd;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        }
        table th, table td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        table th {
            background-color: #004080;
            color: white;
            text-transform: uppercase;
            font-size: 14px;
        }
        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .update-btn, .delete-btn {
            padding: 8px 14px;
            margin-right: 6px;
            font-size: 14px;
            cursor: pointer;
            border: none;
            border-radius: 4px;
        }
        .update-btn {
            background-color: #009688;
            color: white;
        }
        .delete-btn {
            background-color: #e53935;
            color: white;
        }
        #updateForm {
            display: none;
            margin-top: 30px;
            background-color: #fafafa;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }
        #updateForm h3 {
            font-size: 20px;
            margin-bottom: 20px;
            color: #333;
        }
        #updateForm label {
            font-size: 14px;
            color: #555;
        }
        #updateForm input[type="text"], #updateForm input[type="email"], #updateForm input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        #updateForm button {
            background-color: #4caf50;
            color: white;
            border: none;
            padding: 12px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 6px;
        }
        #updateForm button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <!-- Top Navbar -->
    <div class="topnav">
        <span class="project-title">Student Learning Management System</span>
    </div>

    <!-- Sidebar -->
    <div class="sidebar">
        <ul>
            <li><a href="Adminfaculty.jsp">Dashboard</a></li>
            <li><a href="#">ALL COURSES</a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="container">
        <table id="courseTable">
            <thead>
                <tr>
                    <th>Course ID</th>
                    <th>Course Name</th>
                    <th>Department</th>
                    <th>Credits</th>
                    <th>Instructor</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody id="courseData">
                <!-- Data will be populated here using JavaScript -->
            </tbody>
        </table>

        <!-- Update Form (Initially Hidden) -->
        <div id="updateForm">
            <h3>Update Course</h3>
            <form id="courseUpdateForm">
                <label for="updateCourseName">Course Name:</label><br>
                <input type="text" id="updateCourseName" name="updateCourseName"><br>

                <label for="updateDepartment">Department:</label><br>
                <input type="text" id="updateDepartment" name="updateDepartment"><br>

                <label for="updateCredits">Credits:</label><br>
                <input type="text" id="updateCredits" name="updateCredits"><br>

                <label for="updateInstructor">Instructor:</label><br>
                <input type="text" id="updateInstructor" name="updateInstructor"><br>

                <!-- Hidden input to store Course ID -->
                <input type="hidden" id="updateCourseId" name="updateCourseId">

                <br>
                <button type="button" onclick="submitUpdate()">Submit Update</button>
            </form>
        </div>
    </div>

    <!-- Script to handle API calls and update functionality -->
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript">
        // Function to fetch all course data from the backend
        function loadCourseData() {
            var url = "http://localhost:8080/course/readAll";
            console.log("Loading course data from: ", url); // API endpoint to get all courses
            callApi("GET", url, null, displayCourseData);  // Call API using callApi() method defined in main.js
        }

        // Callback function to display course data in the table
        function displayCourseData(response) {
            console.log("Received course data: ", response);
            var courseData = JSON.parse(response);  // Parse JSON response
            var courseTable = document.getElementById("courseData");

            // Clear existing table rows
            courseTable.innerHTML = "";

            // Populate table with course data
            courseData.forEach(function(course) {
                var row = "<tr>" +
                            "<td>" + course.courseid + "</td>" +
                            "<td>" + course.name + "</td>" +
                            "<td>" + course.department + "</td>" +
                            "<td>" + course.credits + "</td>" +
                            "<td>" + course.instructor + "</td>" +
                            "<td>" +
                                "<button class='update-btn' onclick='populateUpdateForm(" + JSON.stringify(course) + ")'>Update</button>" +
                                "<button class='delete-btn' onclick='deleteCourse(" + course.courseid + ")'>Delete</button>" +
                            "</td>" +
                          "</tr>";
                courseTable.innerHTML += row;
            });
        }

        // Function to populate update form with selected course's data
        function populateUpdateForm(course) {
            document.getElementById("updateCourseName").value = course.name;
            document.getElementById("updateDepartment").value = course.department;  // Populate department
            document.getElementById("updateCredits").value = course.credits;
            document.getElementById("updateInstructor").value = course.instructor;
            document.getElementById("updateCourseId").value = course.courseid;

            // Show the update form
            document.getElementById("updateForm").style.display = "block";
        }

        // Function to submit update form
        function submitUpdate() {
            var updateCourseId = document.getElementById("updateCourseId").value;
            var updatedCourseName = document.getElementById("updateCourseName").value;
            var updatedDepartment = document.getElementById("updateDepartment").value;
            var updatedCredits = document.getElementById("updateCredits").value;
            var updatedInstructor = document.getElementById("updateInstructor").value;

            // Create the update data object
            var updateData = {
                courseid: updateCourseId,
                name: updatedCourseName,
                department: updatedDepartment,
                credits: updatedCredits,
                instructor: updatedInstructor
            };

            var updateUrl = "http://localhost:8080/course/update"; // API endpoint for update

            // Call API with proper headers for JSON format
            callApi("PUT", updateUrl, JSON.stringify(updateData), function(response) {
                alert("Course updated successfully.");
                loadCourseData(); // Reload data after update
                document.getElementById("updateForm").style.display = "none"; // Hide update form after update
            });
        }

        // Load course data when the page is loaded
        window.onload = loadCourseData;
    </script>

</body>
</html>
