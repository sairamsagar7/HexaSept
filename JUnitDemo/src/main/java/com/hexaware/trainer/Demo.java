package com.hexaware.trainer;

import java.util.Map;
import java.util.HashMap;

public class Demo {

    public String getProperty(String key){
		Map<String,String> m=new HashMap<String,String>();
		m.put("Meena","Java");
		m.put("Bhargav","Reddy");
		m.put("Harish","K");
		m.put("Sai","Bharath");
		
		return m.get(key);
	}
    public boolean check(int x) {
        if (x%2 == 0) {
            return true;
        } else {
            return false;
        }
    }
    public int minArray(int[] x) {
        int min=x[0];
        for(int i=0;i<x.length;i++) {
            if(min>x[i]) {
                min=x[i];
            }
        }
        return min;
    }

    public String sayHello() {
        return "Welcome to Junit Testing...";
    }
    public int sum(int x, int y) {
        return x+y;
    }
    public int max3(int a, int b, int c) {
        int m=a;
        if (m < b) {
            m = b;
        }
        if (m < c) {
            m = c;
        }
        return m;
    }
}