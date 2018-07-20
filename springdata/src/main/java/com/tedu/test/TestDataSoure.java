package com.tedu.test;

import org.junit.jupiter.api.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.sql.DataSource;
import java.sql.SQLException;

public class TestDataSoure {

    private ApplicationContext alx;

    {
        alx = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
    }

    @Test
    public void test() throws SQLException {
        DataSource dataSource = alx.getBean(DataSource.class);
        System.out.println(dataSource.getConnection());
    }

}
