package com.yjc.method;

import com.yjc.method.common.CommonRandomMethod;
import jdk.nashorn.internal.ir.WhileNode;

import java.util.concurrent.BrokenBarrierException;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Semaphore;

/**
 * Semaphore
 */
public class Task10 {

    public static CommonRandomMethod random = new CommonRandomMethod();

    public static int num = 0;

    public static void main(String[] args) throws InterruptedException {
        final Semaphore mutex = new Semaphore(0);

        Thread thread = new Thread(() -> {
            num = random.CommonRandom();
            mutex.release();
        });
        thread.start();
        //等到释放一个信号量
        mutex.acquire();
        System.out.println("子线程随机数" + num);

    }
}

