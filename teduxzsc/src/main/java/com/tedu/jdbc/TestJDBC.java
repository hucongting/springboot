package com.tedu.jdbc;

import com.mysql.jdbc.PreparedStatement;

import java.sql.Connection;
import java.sql.SQLException;

public class TestJDBC {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {

        Class.forName("com.mysql.jdbc.Driver");
        PreparedStatement ps = null;
        Connection connection = ps.getConnection();

    }
}
