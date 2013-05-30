package org.unitTestCase.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;
import org.unitTestCase.exception.InvalidAccountIdException;
import org.unitTestCase.exception.NullAccountIdException;
import org.unitTestCase.model.AccountInfo;
 
public class AccountInfoWebController extends AbstractController{
 
    private static Map<String, AccountInfo> mapOfAccounts;
 
    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
 
        String accountId = getAccountId(request);
        System.out.println(accountId);
        if (accountId == null){
            throw new NullAccountIdException("Account Id is invalid or empty");
           
        }
 
        if (!mapOfAccounts.containsKey(accountId)){
            throw new InvalidAccountIdException("Account Id is invalid");
        }
 
        AccountInfo accountInfo = mapOfAccounts.get(accountId);
        ModelAndView accountInfoMV = new ModelAndView("accountInfoView", "accountInfoModel", accountInfo);
        return accountInfoMV;
    }
 
    private static String getAccountId(HttpServletRequest request){
 
        try {
            return ServletRequestUtils.getStringParameter(request, "ACCOUNT_ID");
        } catch (ServletRequestBindingException e) {
        e.printStackTrace();
            return null;
        }
    }
 
    static{
        mapOfAccounts = new HashMap<String, AccountInfo>();
 
        mapOfAccounts.put("12345", new AccountInfo("Jerry", "12345", "67890"));
        mapOfAccounts.put("23456", new AccountInfo("Jefrey", "23456", "78901"));
    }
}