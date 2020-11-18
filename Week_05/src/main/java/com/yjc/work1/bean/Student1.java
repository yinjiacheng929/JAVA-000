package com.yjc.work1.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Student1 implements Serializable {

    private int id;
    private String name;

    public void init(){
        System.out.println("hello...........yjc1");
    }

}
