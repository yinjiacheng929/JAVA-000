package com.yjc.annotation;

import java.lang.annotation.*;

/**
 * 自定一个readonly注解
 */

@Target({ElementType.METHOD, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface ReadOnly {
    String name() default "";;
}
