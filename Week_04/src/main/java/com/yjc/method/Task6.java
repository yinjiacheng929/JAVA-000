package com.yjc.method;

import com.yjc.method.common.CommonRandomMethod;

import java.util.concurrent.BrokenBarrierException;
import java.util.concurrent.CyclicBarrier;

/**
 * CyclicBarrier
 */
public class Task6 {

    public static CommonRandomMethod random = new CommonRandomMethod();

    public static int num = 0;


    public static void main(String[] args) throws InterruptedException, BrokenBarrierException {
        CyclicBarrier cyclicBarrier = new CyclicBarrier(2);
        Thread thread = new Thread(() -> {
            try {
                cyclicBarrier.await();
                num = random.CommonRandom();
            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (BrokenBarrierException e) {
                e.printStackTrace();
            }

        });
        thread.start();
        cyclicBarrier.await();
        System.out.println("子线程随机数" + num);
    }
}

