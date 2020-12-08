package com.yjc.aop;

import com.yjc.annotation.ReadOnly;
import com.yjc.datasource.DataSourceNames;
import com.yjc.datasource.DynamicDataSource;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.core.Ordered;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;

/**
 * 多数据源，切面处理类
 *
 */
@Slf4j
@Aspect
@Component
public class DataSourceAspect implements Ordered {

    @Pointcut("@annotation(com.yjc.annotation.ReadOnly)")
    public void dataSourcePointCut() {
    }

    @Around("dataSourcePointCut()")
    public Object around(ProceedingJoinPoint point) throws Throwable {
        MethodSignature signature = (MethodSignature) point.getSignature();
        Method method = signature.getMethod();

        ReadOnly ro = method.getAnnotation(ReadOnly.class);
        String name = ro.name();
        if (ro == null) {
            DynamicDataSource.setDataSource(DataSourceNames.Master);
            log.debug("set datasource is " + DataSourceNames.Master);
        } else {
            DynamicDataSource.setDataSource(ro.name());
            log.debug("set datasource is " + ro.name());
        }

        try {
            return point.proceed();
        } finally {
            DynamicDataSource.clearDataSource();
            log.debug("clean datasource");
        }
    }


    @Override
    public int getOrder() {
        return 1;
    }
}
