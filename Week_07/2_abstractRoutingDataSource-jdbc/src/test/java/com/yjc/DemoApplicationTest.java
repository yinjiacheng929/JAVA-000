package com.yjc;

import com.yjc.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@RunWith(SpringRunner.class)
@SpringBootTest
@MapperScan("com.yjc.mapper")
public class DemoApplicationTest {

    @Autowired
    private UserService userService;

    @Test
    public void testQuery(){
        Map<String, Object> masterDb = userService.findUserByMasterDb(1);
        Map<String, Object> slaveDb = userService.findUserBySlaveDb(2);
        System.out.println(masterDb);
        System.out.println(slaveDb);
    }

    @Test
    public void testInsert(){
        //id,create_time,name,phone
        Map<String,Object> userInfo = new HashMap<>();
        userInfo.put("id",2);
        userInfo.put("createTime",new Date());
        userInfo.put("name","yjc_bak");
        userInfo.put("phone",1);
        userService.insert(userInfo);

    }
}
