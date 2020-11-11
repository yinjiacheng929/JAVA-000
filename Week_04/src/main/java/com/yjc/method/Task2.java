package com.yjc.method;

import com.yjc.method.common.CommonRandomMethod;

/**
 * synchronized 加await  notify
 */
public class Task2 {

    public static CommonRandomMethod random = new CommonRandomMethod();

    public static int num = 0;


    public static void main(String[] args) throws InterruptedException {
        final Object lock = new Object();
        new Thread(() -> {
            synchronized (lock) {
                num = random.CommonRandom();
                //先等待后唤醒
                lock.notify();
            }
        }).start();
        synchronized (lock) {
            lock.wait();
            System.out.println("子线程随机数" + num);
        }
    }

}
