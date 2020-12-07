package com.yjc;

import com.yjc.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Map;

@Slf4j
@RunWith(SpringRunner.class)
@SpringBootTest
class DemoApplicationTests {

    @Autowired
    private UserService userService;

    @Test
    public void test() {
        Map<String, Object> userMapMaster = userService.findUserByMasterDb(1);
        log.info("第一个数据库 : [{}]", userMapMaster.toString());
        Map<String, Object> userMapSlave = userService.findUserBySlaveDb(1);
        log.info("第二个数据库 : [{}]", userMapSlave.toString());
    }
}

