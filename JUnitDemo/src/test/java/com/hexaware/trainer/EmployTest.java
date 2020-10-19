package com.hexaware.trainer;
import org.junit.Test;
// import org.junit.BeforeClass;
// import org.junit.AfterClass;
// import org.junit.Before;
// import org.junit.After;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.assertFalse;

public class EmployTest {
    @Test 
    public void testConstructor() {
        Employ employ = new Employ();
        assertNotNull(employ);
        Employ e1 = null;
        assertNull(e1);
        Employ employ1 = new Employ(3, "Manasa", 88233);
        assertEquals(3, employ1.getEmpno());
        assertEquals("Manasa", employ1.getName());
        assertEquals(88233, employ1.getBasic(), 0);
    }

    @Test 
    public void testHashCode() {
        Employ employ1 = new Employ(3, "Manasa", 88233);
        Employ employ2 = new Employ(3, "Manasa", 88233);
        Employ employ3 = new Employ(1, "Jahnavi", 89833);
        assertEquals(employ1.hashCode(), employ2.hashCode());
        assertNotEquals(employ1.hashCode(), employ3.hashCode());
    }
    @Test 
    public void testGettersAndSetters() {
        Employ employ = new Employ();
        employ.setEmpno(1);
        employ.setName("Mohit");
        employ.setBasic(88233);
        assertEquals(1, employ.getEmpno());
        assertEquals("Mohit", employ.getName());
        assertEquals(88233, employ.getBasic(), 0);
    }
    @Test
    public void testToString() {
        Employ employ1 = new Employ(3, "Manasa", 88233);
        assertEquals("Empno 3 Name Manasa Basic 88233.0", employ1.toString());
    }
}