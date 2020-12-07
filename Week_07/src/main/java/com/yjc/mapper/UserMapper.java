package com.yjc.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.Map;

@Mapper
public interface UserMapper {

    @Select("select * from user where id = #{id}")
    Map<String, Object> queryByInfoId(@Param("id") int id);

    void insert(@Param("user") Map<String, Object> user);
}
