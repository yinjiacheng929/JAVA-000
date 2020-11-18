package com.yjc.work1;

import com.yjc.work1.bean.Student1;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


//通过xml 中定义bean
public class MainTest {

    public static void main(String[] args) {

        //获取容器对象
        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        //通过容器获取配置的javabean
        Student1 student = (Student1) ac.getBean("student1");
        student.init();
    }
}
