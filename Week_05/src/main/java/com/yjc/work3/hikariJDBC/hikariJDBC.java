package com.yjc.work3.hikariJDBC;

import com.yjc.work3.tool.SqlTool;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

public class hikariJDBC {

    @Test
    public void test() {

        Properties pr = new Properties();
        InputStream resourceAsStream = this.getClass().getClassLoader().getResourceAsStream("db.properties");
        try {
            pr.load(resourceAsStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
        //获取key对应的value值
        String url = pr.getProperty("jdbc.url");
        String username = pr.getProperty("jdbc.username");
        String password = pr.getProperty("jdbc.password");

        //实例化类
        HikariConfig hikariConfig = new HikariConfig();
        //设置url
        hikariConfig.setJdbcUrl(url);
        //数据库帐号
        hikariConfig.setUsername(username);
        //数据库密码
        hikariConfig.setPassword(password);
        hikariConfig.addDataSourceProperty("cachePrepStmts", "true");
        hikariConfig.addDataSourceProperty("prepStmtCacheSize", "250");
        hikariConfig.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");
        HikariDataSource ds = new HikariDataSource(hikariConfig);
        Connection conn = null;
        Statement statement = null;
        ResultSet rs = null;
        try {
            conn = ds.getConnection();
            statement = conn.createStatement();
            rs = statement.executeQuery(SqlTool.INSERT_SQL2);
            while (rs.next()) {
                System.out.println(rs.getString("id"));
                System.out.println(rs.getString("name"));
            }
        } catch (
                SQLException e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
        }
    }
}
