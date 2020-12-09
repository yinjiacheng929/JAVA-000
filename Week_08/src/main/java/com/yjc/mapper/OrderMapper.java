package com.yjc.mapper;

import com.yjc.entity.OrderEntity;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;


@Repository
public interface OrderMapper {

    void insertOne(OrderEntity order);

    void insertMany(List<OrderEntity> orders);

    void delete(Long id);

    void update(OrderEntity order);

    List<Map<String, Object>> query(Map<String, Object> condition);
}