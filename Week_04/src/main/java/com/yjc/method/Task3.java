package com.yjc.method;

import com.yjc.method.common.CommonRandomMethod;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/**
 * ReentrantLock condition
 */
public class Task3 {

    public static CommonRandomMethod random = new CommonRandomMethod();

    public static int num = 0;


    public static void main(String[] args) throws InterruptedException {
        ReentrantLock lock = new ReentrantLock();
        Condition condition = lock.newCondition();
        Thread thread = new Thread(() -> {
            try {
                lock.lock();
                //先等待后唤醒
                condition.signal();
                num = random.CommonRandom();
            } finally {
                lock.unlock();
            }
        });
        thread.start();
        lock.lock();
        condition.await();
        lock.unlock();
        System.out.println("子线程随机数" + num);
    }
}

