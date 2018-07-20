package com.tedu.mapper;

import com.tedu.bean.Department;
import org.apache.ibatis.annotations.*;

/**
 * 指定这是一个操作数据库的Mapper
 */
//@Mapper
public interface DepartmentMapper {

    @Select("select * from department where dpid = #{dpid}")
    public Department getDepartmentById(Integer id);

    @Delete("delete from department where dpid = #{dpid}")
    public int deleteDepartmentById(Integer id);

    //插入数据时获取到主键id
    @Options(useGeneratedKeys = true,keyProperty = "dpid")
    @Insert("insert into department(dpname) values(#{dpname})")
    public int insertDepartment(Department department);

    @Update("update department set dpname = #{dpname} where dpid = #{dpid}")
    public int updateDepartment(Department department);
}
