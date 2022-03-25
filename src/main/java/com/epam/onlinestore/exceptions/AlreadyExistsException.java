package com.epam.onlinestore.exceptions;

public class AlreadyExistsException extends Exception {
    public AlreadyExistsException(String email) {
        super("The user with " + email + " email already exists.");
    }
}
