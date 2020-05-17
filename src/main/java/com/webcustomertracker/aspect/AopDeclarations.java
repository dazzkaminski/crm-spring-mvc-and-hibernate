package com.webcustomertracker.aspect;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class AopDeclarations {

    @Pointcut("execution(* com.webcustomertracker.dao.*.*(..))")
    public void forDaoPackage() { }

    @Pointcut("execution(* com.webcustomertracker.controller.*.*(..))")
    public void forControllerPackage() { }

    @Pointcut("execution(* com.webcustomertracker.service.*.*(..))")
    public void forServicePackage() { }

    @Pointcut("forDaoPackage() || forControllerPackage() || forServicePackage()")
    public void forAppFlow() { }
}
