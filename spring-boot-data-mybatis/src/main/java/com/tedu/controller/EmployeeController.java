package com.tedu.controller;

import com.tedu.bean.Employee;
import com.tedu.mapper.EmployeeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmployeeController {

    @Autowired
    EmployeeMapper employeeMapper;

    @GetMapping("/emp/{id}")
    public Employee getEmployeeById(@PathVariable Integer id){
        Employee employee = employeeMapper.getEmployeeById(id);
        System.out.println(employee);
        return employee;
    }
}
