package com.yjc.method;

import com.yjc.method.common.CommonRandomMethod;

import java.util.concurrent.CountDownLatch;

/**
 * CountDownLatch
 */
public class Task5 {

    public static CommonRandomMethod random = new CommonRandomMethod();

    public static int num = 0;


    public static void main(String[] args) throws InterruptedException {
        CountDownLatch countDownLatch = new CountDownLatch(5);
        Thread thread = new Thread(() -> {
            long startTime = System.currentTimeMillis();
            while (System.currentTimeMillis() - startTime < 1000) {
                num = random.CommonRandom();
                countDownLatch.countDown();
            }
        });
        thread.start();
        countDownLatch.await();
        System.out.println("子线程随机数" + num);
    }
}

