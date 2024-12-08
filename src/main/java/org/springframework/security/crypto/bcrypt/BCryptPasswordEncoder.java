package klu.utils;

public class BcryptPasswordEncoder {
    private static final BCryptPasswordEncoder bcryptEncoder = new BCryptPasswordEncoder();

    // Hash a plain text password
    public static String hashPassword(String plainPassword) {
        return bcryptEncoder.encode(plainPassword);
    }

    // Compare a plain text password with a hashed password
    public static boolean matchPassword(String plainPassword, String hashedPassword) {
        return bcryptEncoder.matches(plainPassword, hashedPassword);
    }
}
