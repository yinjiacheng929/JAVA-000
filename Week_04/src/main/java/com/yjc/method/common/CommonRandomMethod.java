package com.yjc.method.common;

import java.util.Random;

/**
 * 随便一个公共的方法，生成一个随机的两位数
 */
public class CommonRandomMethod {

    public int CommonRandom() {
        return sum();
    }

    //生成两位随机数
    private static int random() {
        Random random = new Random();
        int number = random.nextInt(20) + 10;
        return number;
    }

    private static int sum() {
        return fibo(random());
    }

    private static int fibo(int a) {
        if (a < 2) {
            return 1;
        }
        return fibo(a - 1) + fibo(a - 2);
    }


}
