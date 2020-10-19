package com.hexaware.trainer;
import org.junit.Test;
import org.junit.BeforeClass;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.After;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.assertFalse;


public class DemoTest {

    static Demo obj;
    @BeforeClass 
    public static void setUp() {
        obj = new Demo();
    }
    @Before 
    public void show() {
        System.out.println("Test Case Execution Started...");
    }
    @After 
    public void end() {
        System.out.println("Test Case Ended...");
    }
    @AfterClass 
    public static void clean() {
        obj = null;
    }
    @Test
    public void TestGetProperty() {
        assertNotNull(obj.getProperty("Meena"));
        assertNull(obj.getProperty("Manasa"));
    }
     @Test 
    public void testEvenOdd() {
        assertTrue(obj.check(12));
        assertFalse(obj.check(11));
    }

    @Test 
    public void testMinArray() {
        int[] a = new int[]{-5,6,23,77,32,78};
        assertEquals(-5, obj.minArray(a));
    }
    @Test
    public void testSayHello() {
        assertEquals("Welcome to Junit Testing...", obj.sayHello());
    }
    @Test
    public void testSum() {
        assertEquals(5, obj.sum(2,3));
    }
    @Test
    public void testMax3() {
        assertEquals(5, obj.max3(5, 2, 3));
        assertEquals(5, obj.max3(2, 5, 3));
        assertEquals(5, obj.max3(2, 3, 5));
    }
}