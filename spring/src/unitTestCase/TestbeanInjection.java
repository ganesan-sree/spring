package unitTestCase;
import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dao.BeanInjection;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration
public class TestbeanInjection {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

    @Autowired

    private BeanInjection message = null; 
    
    @Test
    public void testMessage() {   
        assertNotNull("Constructor message instance is null.", message);
        
        String msg = message.getMessage();
        
        assertNotNull("Message is null.", msg);
        
        String expectedMessage = "Spring is fun.";
        
        assertEquals("Message should be '" + expectedMessage + "'.", expectedMessage, msg);

        System.out.println("message='{}'"+msg);
    }
}
