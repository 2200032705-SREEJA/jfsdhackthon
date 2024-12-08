<form action="/register" method="post">
    <div>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required />
    </div>
    <div>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required />
    </div>
    <div>
        <label for="confirmPassword">Confirm Password:</label>
        <input type="password" id="confirmPassword" name="confirmPassword" required />
    </div>
    <div>
        <label for="fristname">First Name:</label>
        <input type="text" id="fristname" name="fristname" required />
    </div>
    <div>
        <label for="lastname">Last Name:</label>
        <input type="text" id="lastname" name="lastname" required />
    </div>
    <button type="submit">Register</button>
</form>

<%-- Display error message if password doesn't meet policy --%>
<c:if test="${not empty error}">
    <div style="color:red">${error}</div>
</c:if>
