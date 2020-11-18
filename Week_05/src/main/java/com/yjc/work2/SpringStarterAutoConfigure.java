package com.yjc.work2;


import com.yjc.work2.bean.Klass;
import com.yjc.work2.bean.School;
import com.yjc.work2.bean.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

//指明是一个配置类
@Configuration
@EnableConfigurationProperties(Student.class)
public class SpringStarterAutoConfigure {

    @Autowired
    Klass klass;
    @Autowired
    School school;
    @Autowired
    Student student;


    @Bean
    @ConditionalOnMissingBean
    String exampleService (){
        return  student.create().toString();
    }
}
