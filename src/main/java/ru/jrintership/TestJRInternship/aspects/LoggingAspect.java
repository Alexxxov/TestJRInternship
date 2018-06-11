package ru.jrintership.TestJRInternship.aspects;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;

/**
 * Created by Admin on 04.04.2018.
 */

@Aspect
@Configuration
public class LoggingAspect {
    private static final Logger log = LoggerFactory.getLogger(LoggingAspect.class);

    @Pointcut("execution(public * *(..))")
    public void allPublicMethods() {}

    @Pointcut("within(ru.jrintership.TestJRInternship.controllers.*)")
    public void inControllersPackage(){}

    @Around("allPublicMethods() && inControllersPackage()")
    public Object logController(ProceedingJoinPoint joinPoint) throws Throwable {
        String methodName = joinPoint.getSignature().getName();
        Object[] methodArgs = joinPoint.getArgs();

        log.info("--- Calling method " + methodName + " --- with args: " + methodArgs);

        Object result = joinPoint.proceed();

        log.info("Method " + methodName + " returns " + result);

        return result;
    }

}
