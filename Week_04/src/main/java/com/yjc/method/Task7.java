package com.yjc.method;

import com.yjc.method.common.CommonRandomMethod;

import java.util.concurrent.*;

/**
 * Executors
 * submit
 * Callable
 */
public class Task7 {

    public static CommonRandomMethod random = new CommonRandomMethod();

    public static int num = 0;

    public static void main(String[] args) throws InterruptedException, BrokenBarrierException, ExecutionException {
        ExecutorService executor = Executors.newSingleThreadExecutor();

        Future<Integer> submit = executor.submit(new Callable<Integer>() {
            @Override
            public Integer call() throws Exception {
                return random.CommonRandom();
            }
        });
        num = submit.get();
        System.out.println("子线程随机数" + num);
    }
}

