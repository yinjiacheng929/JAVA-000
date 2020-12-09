package com.yjc.entity;

@Data
public class OrderEntity {

    private String id;
    private Date createTime;
    private String orderNumber;
    private String payPrice;

    public OrderEntity(String id, String orderNumber) {
        this.id = id;
        this.orderNumber = orderNumber;
    }
}
