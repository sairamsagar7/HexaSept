package com.hexaware.trainer;

import com.hexaware.factory.EmployFactory;
import com.hexaware.model.Employ;
import com.hexaware.persistence.EmployDAO;
import mockit.MockUp;
import org.junit.runner.RunWith;
import mockit.Expectations;
import mockit.Mock;
import mockit.Mocked;
import java.util.ArrayList;
import mockit.integration.junit4.JMockit;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertEquals;

import org.junit.Test;

@RunWith(JMockit.class)
public class EmployTest {
  
  @Test
  public final void testListById(@Mocked final EmployDAO dao) {
    final Employ e1 = new Employ(1, "Sougata", "Java", "Programmer", 844223);
    final Employ e2 = new Employ(3, "Ram", "Angular", "Expert",58553);
    new Expectations() {
      {
        dao.show(100); result = e1;
        dao.show(300); result = e2;
        dao.show(200); result = null;
      }
    };
    new MockUp<EmployFactory>() {
      @Mock
      EmployDAO dao() {
        return dao;
      }
    };
    Employ res1 = EmployFactory.showEmploy(100);
    assertNotNull(res1);
    Employ res2 = EmployFactory.showEmploy(300);
    assertNotNull(res2);
    Employ res3 = EmployFactory.showEmploy(200);
    assertNull(res3);
  }
  @Test
  public final void testListCount(@Mocked final EmployDAO dao) {
    final ArrayList<Employ> employList = new ArrayList<Employ>();
    employList.add(new Employ(1, "Sougata", "Java", "Programmer", 844223));
    employList.add(new Employ(3, "Ram", "Angular", "Expert",58553));
    employList.add(new Employ(4, "Jashwanth", "Angular", "Programmer",78553));
    new Expectations() {
      {
        dao.show(); result = employList;
      }
    };
    new MockUp<EmployFactory>() {
      @Mock
      EmployDAO dao() {
        return dao;
      }
    };
    Employ[] es = EmployFactory.showEmploy();
    assertEquals(3, es.length);
  }
}