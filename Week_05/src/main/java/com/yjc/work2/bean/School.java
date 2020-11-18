package com.yjc.work2.bean;

import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

@Data
@Component
public class School{

    // Resource 
    @Autowired(required = true) //primar
    Klass class1;

    @Resource(name = "student100")
    Student student100;

}
    