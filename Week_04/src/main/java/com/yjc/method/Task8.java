package com.yjc.method;

import com.yjc.method.common.CommonRandomMethod;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BrokenBarrierException;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/**
 * ArrayBlockingQueue
 */
public class Task8 {

    public static CommonRandomMethod random = new CommonRandomMethod();

    public static int num = 0;


    public static void main(String[] args) throws InterruptedException, BrokenBarrierException {
        ArrayBlockingQueue<Integer> queue = new ArrayBlockingQueue<Integer>(1);
        Thread thread = new Thread(() -> {
            try {
                num = random.CommonRandom();
                queue.offer(num);
            } catch (Exception e) {
                e.printStackTrace();
            }
        });
        thread.start();
        Integer sum = queue.take();
        System.out.println("子线程随机数" + num);
    }
}

