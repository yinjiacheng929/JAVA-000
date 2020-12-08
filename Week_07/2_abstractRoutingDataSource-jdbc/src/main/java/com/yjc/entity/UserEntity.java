package com.yjc.entity;

import lombok.Data;

import java.util.Date;

@Data
public class UserEntity {

    String id;
    String name;
    Date createTime;
    String phone;
}
