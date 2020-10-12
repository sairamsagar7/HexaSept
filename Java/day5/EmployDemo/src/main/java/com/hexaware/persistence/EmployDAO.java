package com.hexaware.persistence;
import com.hexaware.model.Employ;
import java.util.List;
import org.skife.jdbi.v2.sqlobject.customizers.Mapper;
import org.skife.jdbi.v2.sqlobject.SqlQuery;

public interface EmployDAO {

       @SqlQuery("SELECT * FROM EMPLOY")
       @Mapper(EmployMapper.class)
       List<Employ> showEmploy();
}