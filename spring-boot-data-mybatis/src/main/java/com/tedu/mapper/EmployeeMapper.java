package com.tedu.mapper;

import com.tedu.bean.Employee;

public interface EmployeeMapper {

    public Employee getEmployeeById(Integer id);

    public void insertEmployee(Employee employee);

}
