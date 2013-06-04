package org.unitTestCase.exception;

public class InvalidAccountIdException extends Exception{
	 
    /**
    * Default serial version UID
    */
    private static final long serialVersionUID = 1L;
 
    public InvalidAccountIdException(String message){
        super(message);
    }
}