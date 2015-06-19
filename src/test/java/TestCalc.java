

import static org.junit.Assert.*;
import junit.framework.Assert;

import org.junit.Before;
import org.junit.Test;

import com.bubblebee.webapp.controller.HelloWorldController;

public class TestCalc {
	
	HelloWorldController tester = new HelloWorldController();
	
//	@Before
//	public void setUp() {
//		HelloWorldController tester = new HelloWorldController();
//	}
	
	@Test
	public void testShowMessage(){
		
		Assert.assertNotNull(tester.showMessage("", "5", "4", "Plus"));
		Assert.assertNotNull(tester.showMessage("", "5", "4", "Minus"));
		Assert.assertNotNull(tester.showMessage("", "5", "4", "Multiply"));
		Assert.assertNotNull(tester.showMessage("", "5", "4", "Divide"));
		
	}
	
	@Test
	public void testAdd() {
		
		Assert.assertTrue(9.0 == tester.plus(5, 4));
		Assert.assertTrue(1.0 == tester.plus(5, -4));
		Assert.assertTrue(-1.0 == tester.plus(-5, 4));
		Assert.assertTrue(-9.0 == tester.plus(-5, -4));
		
	}
	@Test
	public void testMin() {
		
		Assert.assertTrue(1.0 == tester.min(5, 4));
		Assert.assertTrue(9.0 == tester.min(5, -4));
		Assert.assertTrue(-9.0 == tester.min(-5, 4));
		Assert.assertTrue(-1.0 == tester.min(-5, -4));
		
	}
	@Test
	public void testMul() {
		
		Assert.assertTrue(20.0 == tester.mul(5, 4));
		Assert.assertTrue(-20.0 == tester.mul(5, -4));
		Assert.assertTrue(-20.0 == tester.mul(-5, 4));
		Assert.assertTrue(20.0 == tester.mul(-5, -4));
		
	}
	@Test
	public void testDiv() {
		
		Assert.assertTrue(1.0 == tester.div(5, 5));
		Assert.assertTrue(-1.0 == tester.div(5, -5));
		Assert.assertTrue(-1.0 == tester.div(-5, 5));
		Assert.assertTrue(1.0 == tester.div(-5, -5));
		
	}

}
