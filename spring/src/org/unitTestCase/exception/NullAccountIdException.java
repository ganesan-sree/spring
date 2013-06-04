package org.unitTestCase.exception;

public class NullAccountIdException extends Exception{
	 
    /**
    * Default serial version UID
    */
    private static final long serialVersionUID = 1L;
 
    public NullAccountIdException(String message){
        super(message);
    }
}
