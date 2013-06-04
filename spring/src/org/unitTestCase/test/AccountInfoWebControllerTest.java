package org.unitTestCase.test;

import java.util.Iterator;

import junit.framework.Assert;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.test.web.ModelAndViewAssert;
import org.springframework.web.servlet.ModelAndView;
import org.unitTestCase.controller.AccountInfoWebController;
import org.unitTestCase.exception.InvalidAccountIdException;
import org.unitTestCase.exception.NullAccountIdException;
import org.unitTestCase.model.AccountInfo;
 
public class AccountInfoWebControllerTest {
 
    private AccountInfoWebController controller;
 
    @Before
    public void init(){
 
    controller = new AccountInfoWebController();
    }
 
    @Test
    public void test1() throws Exception{
 
        MockHttpServletRequest request = new MockHttpServletRequest();
        request.setMethod("GET");
 
        MockHttpServletResponse response = new MockHttpServletResponse();
        try{
            controller.handleRequest(request, response);
        
           
        }catch (NullAccountIdException exception){
        	 Assert.fail("Should have thrown Null Account Id Exception");
        }catch (Exception exception){
            Assert.fail(exception.getMessage());
        }
    }
 
    @Test
    public void test2() throws Exception{
 
        MockHttpServletRequest request = new MockHttpServletRequest();
        request.setMethod("GET");
        request.addParameter("ACCOUNT_ID", "111111"); 
        MockHttpServletResponse response = new MockHttpServletResponse();
        try{
            controller.handleRequest(request, response);
            Assert.fail("Should have thrown Invalid Account Id Exception");
        }catch (InvalidAccountIdException exception){
        	 Assert.fail(exception.getMessage());
        }catch (Exception exception){
            Assert.fail(exception.getMessage());
        }
    }
 
    @SuppressWarnings("unchecked")
    @Test
    public void test3() throws Exception{
 
        MockHttpServletRequest request = new MockHttpServletRequest();
        request.setMethod("GET");
        request.addParameter("ACCOUNT_ID", "12345");
 
        MockHttpServletResponse response = new MockHttpServletResponse();
        try{
 
            ModelAndView modelAndView = controller.handleRequest(request, response);
            Assert.assertNotNull(modelAndView);
 
            ModelAndViewAssert.assertAndReturnModelAttributeOfType(modelAndView, "accountInfoModel", AccountInfo.class);
            ModelAndViewAssert.assertViewName(modelAndView, "accountInfoView");
 
            Iterator<String> iterator = modelAndView.getModel().keySet().iterator();
            if (iterator.hasNext()){
 
                String key = iterator.next();
                AccountInfo accountInfo = (AccountInfo)modelAndView.getModel().get(key);
 
                Assert.assertEquals("Jerry", accountInfo.getCustomerName());
                Assert.assertEquals("12345", accountInfo.getCustomerNumber());
                Assert.assertEquals("67890", accountInfo.getDebitCardNumber());
            }else{
            }
        }catch (Exception exception){
            Assert.fail(exception.getMessage());
        }
    }
 
    @After
    public void destroy(){
        controller = null;
    }
}
