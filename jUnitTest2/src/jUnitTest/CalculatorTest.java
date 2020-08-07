package jUnitTest;

import static org.junit.Assert.*;

import org.junit.Test;

public class CalculatorTest {

	@Test
	public void main() {
		Calculator c=new Calculator();
		double res = c.sum(10, 20);
		if(res != 30){
			System.err.println("err :"+ res);
		}
//		CalculatorTest cTest=new CalculatorTest();
//		cTest.jUnitTest();
	}
	
	//@Test 어노테이션이 선언된 메소드는 static이 들어가면 안됨
	//		파라미터가 있으면 안됨
//	public void jUnitTest() {
//		
//	}

}
