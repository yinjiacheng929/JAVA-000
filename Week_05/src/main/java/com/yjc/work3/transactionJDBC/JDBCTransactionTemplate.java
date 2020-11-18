package com.yjc.work3.transactionJDBC;


import com.yjc.work3.tool.PropertiesTool;
import com.yjc.work3.tool.SqlTool;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.sql.*;

/**
 * 原生加事务JDBC
 */
@RunWith(SpringJUnit4ClassRunner.class)
public class JDBCTransactionTemplate {


    @Test
    public void test(String[] args) {


        PropertiesTool pr = new PropertiesTool();

        String driver = pr.getDriver();

        String url = pr.getUrl();

        String username = pr.getUsername();

        String password = pr.getPassword();

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
            ps = connection.prepareStatement(SqlTool.INSERT_SQL2);
//            ps = connection.prepareStatement(SqlTool.QUERY_SQL);
//            ps = connection.prepareStatement(SqlTool.UPDATE_SQL);
//            ps = connection.prepareStatement(SqlTool.DELTE_SQL);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        //4.执行sql
        try {
            //添加事务
            connection.setAutoCommit(false);
            ps.execute(SqlTool.INSERT_SQL1);
            ps.execute(SqlTool.UPDATE_SQL);
            if(true){
                throw new RuntimeException("数据修改失败！");
            }
            //提交事务
            connection.commit();
        } catch (Exception e) {
            try {
                //事务回滚
                connection.rollback();
            } catch (SQLException e1) {
                e.printStackTrace();
            }
            throw new RuntimeException(e);
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
