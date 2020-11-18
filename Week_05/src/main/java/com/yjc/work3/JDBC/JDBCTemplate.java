package com.yjc.work3.JDBC;


import com.yjc.work3.tool.SqlTool;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

/**
 * 原生JDBC
 */
@RunWith(SpringJUnit4ClassRunner.class)
public class JDBCTemplate {


    @Test
    public void test(String[] args) {


        Properties pr = new Properties();
        InputStream resourceAsStream = this.getClass().getClassLoader().getResourceAsStream("db.properties");
        try {
            pr.load(resourceAsStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
        //获取key对应的value值
        String driver = pr.getProperty("jdbc.driver");
        String url = pr.getProperty("jdbc.url");
        String username = pr.getProperty("jdbc.username");
        String password = pr.getProperty("jdbc.password");


        Connection connection = null;

        //1.注册驱动
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        //2.连接数据库
        try {
            connection = DriverManager.getConnection(url, username, password);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


        //3.预编译，可防sql注入 PreparedStatement
        PreparedStatement ps = null;
        try {
            //CURD
            ps = connection.prepareStatement(SqlTool.INSERT_SQL1);
//            ps = connection.prepareStatement(SqlTool.QUERY_SQL);
//            ps = connection.prepareStatement(SqlTool.UPDATE_SQL);
//            ps = connection.prepareStatement(SqlTool.DELTE_SQL);
            ResultSet resultSet = ps.executeQuery();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        //4.执行sql
        try {
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                System.out.println("输出结果总数---------------------" + resultSet.getString(1));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        //5.关闭连接
        try {
            ps.close();
            connection.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
