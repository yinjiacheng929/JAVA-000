package com.yjc.work1;


import com.yjc.work1.bean.Student3;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * 等同于第二种
 * 定义一个java的配置文件Student3Config
 * 扫描方式放在 java 类上
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = Student3Config.class)
public class MainTest3 {

   @Autowired
   private Student3 student3;

   @Test
   public void test(){
      student3.init();
   }

}
