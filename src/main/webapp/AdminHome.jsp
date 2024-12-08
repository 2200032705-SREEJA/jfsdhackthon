<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="css/styles.css" />
    <style>
        body {
            margin: 0;
            display: flex;
            height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f9;
        }

        .navbar {
            width: 220px;
            background-color: #2c3e50;
            color: #ecf0f1;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            box-shadow: 3px 0 8px rgba(0, 0, 0, 0.1);
        }

        .navbar h3 {
            font-size: 22px;
            margin-bottom: 30px;
            text-align: left;
            width: 100%;
            border-bottom: 1px solid #ecf0f1;
            padding-bottom: 10px;
        }

        .navbar a, .navbar label {
            font-size: 16px;
            margin-bottom: 15px;
            color: #bdc3c7;
            text-decoration: none;
            cursor: pointer;
            width: 100%;
            padding: 10px;
            background-color: transparent;
            border-radius: 6px;
            text-align: left;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover, .navbar label:hover {
            background-color: #1abc9c;
            color: white;
        }

        .content {
            flex-grow: 1;
            padding: 40px;
            overflow-y: auto;
            background-color: #ecf0f1;
        }

        .content h1 {
            font-size: 28px;
            font-weight: bold;
            color: #34495e;
            margin-bottom: 20px;
        }

        .registrationWindow {
            max-width: 500px;
            margin: auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
        }

        .registrationHeader {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #34495e;
        }

        .registrationContent div {
            margin-bottom: 15px;
            font-size: 14px;
            color: #34495e;
        }

        .registrationContent input[type="text"], 
        .registrationContent input[type="email"],
        .registrationContent input[type="password"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #bdc3c7;
            border-radius: 8px;
            background-color: #f9f9f9;
            font-size: 16px;
            transition: border 0.3s ease;
        }

        .registrationContent input:focus {
            border: 1px solid #1abc9c;
            outline: none;
        }

        .registerButton {
            background-color: #3498db;
            color: white;
            padding: 14px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
            width: 100%;
            margin-top: 15px;
        }

        .registerButton:hover {
            background-color: #2980b9;
        }

        #ack {
            margin-top: 20px;
            font-size: 14px;
            text-align: center;
            height: 40px;
            line-height: 40px;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <h3>Navigation</h3>
        <a href="#" onclick="displayStudentRegistration()">Student Registration</a>
        <label onClick="faculty()">Faculty</label>
        <a href="#" onclick="displayCourseManagement()">Course Management</a>
        <a href="#" onclick="displayLearningOutcomes()">Learning Outcomes</a>
        <a href="#" onclick="displayPerformanceTracking()">Performance Tracking</a>
    </div>

    <div class="content">
        <h1>Admin Dashboard</h1>
        
        <!-- Student Registration -->
        <div id="registrationForm" class="registrationWindow" style="display:none;">
            <div class="registrationHeader">Register Student</div>
            <div class="registrationContent">
                <div>Username*</div>
                <input type="text" id="username" />
                
                <div>First Name*</div>
                <input type="text" id="firstName" />
                
                <div>Last Name*</div>
                <input type="text" id="lastName" />
                
                <div>Email*</div>
                <input type="email" id="email" />
                
                <div>Password*</div>
                <input type="password" id="password" />
                
                <button class="registerButton" onclick="registerStudent()">Register</button>
                <div>
                    <label id="ack"></label>
                </div>
            </div>
        </div>

        <!-- Course Management -->
        <div id="courseManagement" class="registrationWindow" style="display:none;">
            <div class="registrationHeader">Course Management</div>
            <div class="registrationContent">
                <div>Course Name*</div>
                <input type="text" id="courseName" />
                
                <div>Course ID*</div>
                <input type="text" id="courseId" />
                
                <div>Department*</div>
                <input type="text" id="department" />
                
                <button class="registerButton" onclick="saveCourse()">Save Course</button>
                <div>
                    <label id="courseAck"></label>
                </div>
            </div>
        </div>

        <!-- Learning Outcomes -->
        <div id="learningOutcomes" class="registrationWindow" style="display:none;">
            <div class="registrationHeader">Learning Outcomes</div>
            <div class="registrationContent">
                <div>Course Code*</div>
                <input type="text" id="courseCode" />
                
                <div>Course Name*</div>
                <input type="text" id="courseNameOutcome" />
                
                <div>Outcome Type*</div>
                <input type="text" id="outcomeType" />
                
                <button class="registerButton" onclick="saveLearningOutcome()">Save Outcome</button>
                <div>
                    <label id="outcomeAck"></label>
                </div>
            </div>
        </div>

        <!-- Performance Tracking -->
        <div id="performanceTracking" class="registrationWindow" style="display:none;">
            <div class="registrationHeader">Performance Tracking</div>
            <div class="registrationContent">
                <div>Student ID*</div>
                <input type="text" id="studentId" />
                
                <div>Course Code*</div>
                <input type="text" id="courseCodePerformance" />
                
                <div>Performance Score*</div>
                <input type="text" id="performanceScore" />
                
                <button class="registerButton" onclick="trackPerformance()">Save Performance</button>
                <div>
                    <label id="performanceAck"></label>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        function displayStudentRegistration() {
            hideAll();
            document.getElementById('registrationForm').style.display = 'block';
        }

        function displayCourseManagement() {
            hideAll();
            document.getElementById('courseManagement').style.display = 'block';
        }

        function displayLearningOutcomes() {
            hideAll();
            document.getElementById('learningOutcomes').style.display = 'block';
        }

        function displayPerformanceTracking() {
            hideAll();
            document.getElementById('performanceTracking').style.display = 'block';
        }

        function hideAll() {
            document.getElementById('registrationForm').style.display = 'none';
            document.getElementById('courseManagement').style.display = 'none';
            document.getElementById('learningOutcomes').style.display = 'none';
            document.getElementById('performanceTracking').style.display = 'none';
        }

        function callApi(method, url, data, callback) {
            fetch(url, {
                method: method,
                headers: {
                    'Content-Type': 'application/json'
                },
                body: data
            }).then(res => callback(res.status));
        }

        function registerStudent() {
            var data = JSON.stringify({
                username: document.getElementById('username').value,
                firstName: document.getElementById('firstName').value,
                lastName: document.getElementById('lastName').value,
                email: document.getElementById('email').value,
                password: document.getElementById('password').value
            });

            callApi("POST", "http://localhost:8080/student/save", data, function(res) {
                displayAck(res, "ack");
            });
        }

        function saveCourse() {
            var data = JSON.stringify({
                courseid: document.getElementById('courseId').value,
                department: document.getElementById('department').value,
                name: document.getElementById('courseName').value
            });

            callApi("POST", "http://localhost:8080/course/save", data, function(res) {
                displayAck(res, "courseAck");
            });
        }

        function saveLearningOutcome() {
            var data = JSON.stringify({
                coursecode: document.getElementById('courseCode').value,
                coursename: document.getElementById('courseNameOutcome').value,
                outcometype: document.getElementById('outcomeType').value
            });

            callApi("POST", "http://localhost:8080/outcome/save", data, function(res) {
                displayAck(res, "outcomeAck");
            });
        }

        function trackPerformance() {
            var data = JSON.stringify({
                studentid: document.getElementById('studentId').value,
                coursecode: document.getElementById('courseCodePerformance').value,
                performancescore: document.getElementById('performanceScore').value
            });

            callApi("POST", "http://localhost:8080/performance/save", data, function(res) {
                displayAck(res, "performanceAck");
            });
        }

        function displayAck(res, elementId) {
            var label = document.getElementById(elementId);
            if (res === 200) {
                label.style.color = "green";
                label.innerHTML = "Operation successful!";
            } else {
                label.style.color = "red";
                label.innerHTML = "Operation failed!";
            }
        }

        function faculty() {
            location.replace("/Adminfaculty.jsp");
        }
    </script>

</body>
</html>
