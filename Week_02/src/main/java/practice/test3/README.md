学习笔记
线程池的方式，newFixedThreadPool  固定40个线程
从线性图看来，就算等待20ms,请求处理还是稳定的
只是随着压测 并发量越高，median越高 rps涨幅不太大