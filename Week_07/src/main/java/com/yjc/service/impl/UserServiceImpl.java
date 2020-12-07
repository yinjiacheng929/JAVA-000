package com.yjc.service.impl;

import com.yjc.annotation.ReadOnly;
import com.yjc.datasource.DataSourceNames;
import com.yjc.mapper.UserMapper;
import com.yjc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class UserServiceImpl   implements UserService{

    @Autowired
    private UserMapper userMapper;


    @Override
    public void insert(Map<String, Object> userInfo) {
        userMapper.insert(userInfo);
    }

    @Override
    @ReadOnly(name= DataSourceNames.Master)
    public Map<String, Object> findUserByMasterDb(int id) {
        return userMapper.queryByInfoId(id);
    }

    @Override
    @ReadOnly(name= DataSourceNames.Slave)
    public Map<String, Object> findUserBySlaveDb(int id) {
        return userMapper.queryByInfoId(id);
    }
}
