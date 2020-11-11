package com.yjc.method;

import com.yjc.method.common.CommonRandomMethod;

import java.util.concurrent.locks.LockSupport;


/**
 * LockSupport
 */
public class Task4 {

    public static CommonRandomMethod random = new CommonRandomMethod();

    public static int num = 0;


    public static void main(String[] args) throws InterruptedException {
        Thread currentThread = Thread.currentThread();
        Thread thread = new Thread(() -> {
            num = random.CommonRandom();
            LockSupport.unpark(currentThread);
        });
        thread.start();
        LockSupport.park();
        System.out.println("子线程随机数" + num);
    }

}
