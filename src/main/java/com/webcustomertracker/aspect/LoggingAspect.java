package com.webcustomertracker.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LoggingAspect {

    public static final Logger LOGGER = LoggerFactory.getLogger(LoggingAspect.class);

    @Before("com.webcustomertracker.aspect.AopDeclarations.forAppFlow()")
    public void beforeDAO(JoinPoint joinPoint) {
        String method = joinPoint.getSignature().toShortString();
        LOGGER.info("Calling method: " + method);

        Object[] args = joinPoint.getArgs();
        for (Object tempArg : args) {
            LOGGER.info("Arguments for " + method + ": " + tempArg.toString());
        }
    }

    @AfterReturning(
            pointcut = "com.webcustomertracker.aspect.AopDeclarations.forAppFlow()",
            returning = "result"
    )
    public void afterReturning(JoinPoint joinPoint, Object result) {
        String method = joinPoint.getSignature().toShortString();
        LOGGER.info("After returning from method: " + method);
        LOGGER.info("result: " + result);
    }

}
