package com.yjc.service;

import java.util.Map;

public interface UserService  {

    void insert(Map<String,Object> userInfo);

    Map<String, Object> queryById(int id);
}