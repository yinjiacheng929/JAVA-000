package com.yjc.method;

import com.yjc.method.common.CommonRandomMethod;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BrokenBarrierException;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;

/**
 * CompletableFuture
 */
public class Task9 {

    public static CommonRandomMethod random = new CommonRandomMethod();

    public static int num = 0;

    public static void main(String[] args) throws InterruptedException, BrokenBarrierException, ExecutionException {
        CompletableFuture<Integer> completableFuture = CompletableFuture.supplyAsync(() -> {
            return random.CommonRandom();
        });
        System.out.println("子线程随机数" +  completableFuture.get());
    }
}

