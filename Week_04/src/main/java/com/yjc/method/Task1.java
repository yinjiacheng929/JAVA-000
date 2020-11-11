package com.yjc.method;

import com.yjc.method.common.CommonRandomMethod;


/**
 * 子线程  join
 *
 */
public class Task1 {

    public static CommonRandomMethod random = new CommonRandomMethod();

    public static int  num = 0;


    public static void main(String[] args) throws InterruptedException {
        Thread thread = new Thread(() -> {
            num = random.CommonRandom();
        });
        thread.start();
        thread.join();
        System.out.println("子线程随机数"+num);
    }

}
