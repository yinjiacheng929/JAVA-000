package com.yjc;

import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public class batchInsert {
    public static void main(String[] args) {
        batchInsert();
    }



    public static void batchInsert() {
        long start = System.currentTimeMillis();
        //1.注册驱动
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        //获取key对应的value值
        String url = "jdbc:mysql://localhost:3306/test";
        String username = "root";
        String password = "150405";

        Connection connection = null;


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
            for(int i = 1; i <= 10000000; i++){
                LocalDateTime localDateTime = LocalDateTime.now();
                DateTimeFormatter dtf= DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
                String strDate=localDateTime.format(dtf);
                Timestamp timeStamp = new Timestamp(new Date().getTime());
                String sql = "insert into order (id,create_time,order_numer,pay_price,name,type,status) " +
                        "values("+i+",'"+timeStamp.toString()+"','"+strDate+i+"','1','玩具','0'"+
                        ")";
                ps.addBatch(sql);
            }
            //4.执行sql
            ps.executeBatch();
            ps.clearBatch();
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
        System.out.println("执行时间：" + (System.currentTimeMillis()-start));

    }
}
