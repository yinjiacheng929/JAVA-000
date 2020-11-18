package com.yjc.work1;


import com.yjc.work1.bean.Student3;
import com.yjc.work1.bean.Student4;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * 等同于第3种
 * @Autowired 注解在set方法上
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = Student3Config.class)
public class MainTest4 {


   private Student4 student4;

   @Autowired
   public void setStudent4(Student4 student4) {
      this.student4 = student4;
   }

   @Test
   public void test(){
      student4.init();
   }


}
