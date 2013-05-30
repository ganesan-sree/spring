package com.aop.aspectJ;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Aspect
public class LoggingAspect {
	
	@Autowired(required=true)
	private HttpServletRequest request;

	@Before("execution(* com.aop.AopController.printWelcome(..))")
	public void logBefore(JoinPoint joinPoint) {

		System.out.println("logBefore() is running!");
		System.out.println("hijacked : " + joinPoint.getSignature().getName());
		
		System.out.println(joinPoint.getTarget());
		System.out.println(joinPoint.getSourceLocation());
		System.out.println(joinPoint.getArgs());
		System.out.println(Arrays.toString(joinPoint.getArgs()));
		
		MethodSignature signature = (MethodSignature) joinPoint.getSignature();
		
		String methodName = signature.getName();
		System.out.println(methodName);
		Class<?>[] parameterTypes = signature.getParameterTypes();
		System.out.println(parameterTypes.length);
		System.out.println(parameterTypes[0]);
		
		System.out.println("requestrequestrequest               \t\t\t"+request.getContextPath());
		
		//Annotations[][] annotations = joinPoint.getTarget().getClass().getMethod(methodName,parameterTypes).getParameterAnnotations();
		

		HttpServletRequest request1 = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		System.out.println("request1request1request1request1   "+request1);
		System.out.println("******");
	}

	@After("execution(* com.aop.aspectJ.customer.bo.CustomerBo.addCustomer(..))")
	public void logAfter(JoinPoint joinPoint) {

		System.out.println("logAfter() is running!");
		System.out.println("hijacked : " + joinPoint.getSignature().getName());

	}
	
	@AfterReturning(
			pointcut = "execution(* com.aop.aspectJ.customer.bo.CustomerBo.addCustomerReturnValue(..))",
			returning= "result")
	public void logAfterReturning(JoinPoint joinPoint, Object result) {

		System.out.println("logAfterReturning() is running!");
		System.out.println("hijacked : " + joinPoint.getSignature().getName());
		System.out.println("Method returned value is : " + result);
		System.out.println("******");

	}
	
	@AfterThrowing(
			pointcut = "execution(* com.aop.aspectJ.customer.bo.CustomerBo.addCustomerThrowException(..))",
			throwing= "error")
	public void logAfterThrowing(JoinPoint joinPoint, Throwable error) {

		System.out.println("logAfterThrowing() is running!");
		System.out.println("hijacked : " + joinPoint.getSignature().getName());
		System.out.println("Exception : " + error);
		System.out.println("******");

	}
	
	
	@Around("execution(* com.aop.AopController.printWelcome(..))")
	public void logAround(ProceedingJoinPoint joinPoint) throws Throwable {

		System.out.println("logAround() is running!");
		System.out.println("hijacked method : " + joinPoint.getSignature().getName());
		System.out.println("hijacked arguments : " + Arrays.toString(joinPoint.getArgs()));
		
		
		System.out.println("Around before is running!");
		//joinPoint.proceed();
		System.out.println("Around after is running!");
		
		System.out.println("******");

	}
	
}