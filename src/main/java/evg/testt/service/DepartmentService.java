package evg.testt.service;

import evg.testt.model.Department;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;

import java.sql.SQLException;
import java.util.List;

public interface DepartmentService extends Service<Department>{

    @Override
    @Cacheable(value = "departmentsAllCache", key = "#root.methodName")
    List<Department> getAll() throws SQLException;

    @Override
    @Cacheable(value = "departmentsCache", key = "#id")
    Department getById(Integer id) throws SQLException;

    @Override
    @CacheEvict(value = "departmentsCache", key = "#p0.id")
    void delete(Department o) throws SQLException;

    @Override
    @CacheEvict(value = "departmentsCache", key = "#p0.id")
    void update(Department o) throws SQLException;
}
