package com.yjc;

import com.yjc.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = DemoApplicationTest.class)
@SpringBootApplication
@MapperScan("com.yjc.mapper")
public class DemoApplicationTest {

    @Autowired
    private UserService userService;

    @Test
    public void testQuery() {
        Map<String, Object> userByMasterDb = userService.findUserByMasterDb(602);
        System.out.println(userByMasterDb);
    }

    @Test
    public void testInsert() {
        for (int i = 1; i < 1000; i++) {
            Map<String, Object> orderM = new HashMap<>();
            Map<String, Object> userInfo = new HashMap<>();
            userInfo.put("id", i);
            userInfo.put("createTime", new Date());
            userInfo.put("name", "yjc_" + i);
            userInfo.put("phone", i);
            userService.insert(userInfo);
        }

    }
}
