package com.yjc.work3.tool;

import lombok.Data;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

@Data
public class PropertiesTool {

    String driver;
    String url;
    String username;
    String password;


    //获取key对应的value值


    public PropertiesTool() {
        Properties pr = new Properties();
        InputStream resourceAsStream = this.getClass().getClassLoader().getResourceAsStream("db.properties");
        try {
            pr.load(resourceAsStream);
        } catch (
                IOException e) {
            e.printStackTrace();
        }
        this.driver = pr.getProperty("jdbc.driver");
        this.url = pr.getProperty("jdbc.url");
        this.username = pr.getProperty("jdbc.username");
        this.password = pr.getProperty("jdbc.password");
    }
}
