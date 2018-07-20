package com.tedu.controller;

import com.tedu.bean.Department;
import com.tedu.mapper.DepartmentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DeptController {

    @Autowired
    DepartmentMapper departmentMapper;

    @GetMapping("/getdept/{id}")
    public Department getDeptById(@PathVariable("id") Integer id){
        Department department = departmentMapper.getDepartmentById(id);
        System.out.println(department);
        return department;
    }

    @GetMapping("/insertdept")
    public Department insertDept(Department department){
        departmentMapper.insertDepartment(department);
        return department;
    }
}
