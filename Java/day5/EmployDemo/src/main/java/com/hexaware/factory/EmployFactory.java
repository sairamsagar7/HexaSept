package com.hexaware.factory;
import com.hexaware.persistence.EmployDAO;
import java.util.List;
import com.hexaware.model.Employ;
import com.hexawarae.persistence.DbConnection;

public class EmployFactory {

  public EmployFactory() {

  }
  
  private static EmployDAO dao() {
    DbConnection db = new DbConnection();
    return db.getConnect().onDemand(EmployDAO.class);
  }
  public static Employ[] showEmploy() {
    List<Employ> employees = dao().showEmploy();
    return employees.toArray(new 
      Employ[employees.size()]);
  }
}