package com.example;

import static org.junit.Assert.assertEquals;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class AAATest {

    private int a;
    private int b;

    @Before
    public void setUp() {
        a = 20;
        b = 10;
        System.out.println("Setup completed.");
    }

    @Test
    public void testAddition() {

        // Arrange
        int x = a;
        int y = b;

        // Act
        int result = x + y;

        // Assert
        assertEquals(30, result);

        System.out.println("Assertion successful.");
    }

    @After
    public void tearDown() {
        System.out.println("Cleanup completed.");
    }
}