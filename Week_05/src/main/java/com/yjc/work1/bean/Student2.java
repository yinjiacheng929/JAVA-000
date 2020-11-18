package com.yjc.work1.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.stereotype.Component;

import java.io.Serializable;
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Component
public class Student2 implements Serializable {

    private int id;
    private String name;

    public void init(){
        System.out.println("hello...........yjc2");
    }

}