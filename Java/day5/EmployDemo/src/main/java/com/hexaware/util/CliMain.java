package com.hexaware.util;
import com.hexaware.factory.EmployFactory;
import com.hexaware.model.Employ;

public class CliMain {
    public static void main(String[] args) {
        Employ[] employList = EmployFactory.showEmploy();
        for(Employ e : employList) {
            System.out.println(e);
        }
    }
}