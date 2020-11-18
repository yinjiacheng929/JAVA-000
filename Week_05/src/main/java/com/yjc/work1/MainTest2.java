package com.yjc.work1;


import com.yjc.work1.bean.Student2;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


/**
 * 添加component-scan 扫面注解
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/resources/applicationContext.xml"})
public class MainTest2 {

    @Autowired
    private Student2 student2;

    @Test
    public  void test(){
        student2.init();
    }

}
