package klu.security;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PasswordValidator {

    // Password policy pattern
    private static final String PASSWORD_PATTERN = 
            "^(?=.*[0-9])" +        // At least one digit
            "(?=.*[a-z])" +         // At least one lowercase letter
            "(?=.*[A-Z])" +         // At least one uppercase letter
            "(?=.*[@#$%^&+=])" +    // At least one special character
            "(?=\\S+$).{8,}$";      // No whitespace and minimum length of 8

    private static final Pattern pattern = Pattern.compile(PASSWORD_PATTERN);

    // Method to validate password
    public static boolean isValid(String password) {
        Matcher matcher = pattern.matcher(password);
        return matcher.matches();
    }
}
