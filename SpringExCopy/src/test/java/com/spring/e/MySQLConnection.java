package com.spring.e;

import java.sql.Connection;
import java.sql.DriverManager;
import org.junit.jupiter.api.Test;


public class MySQLConnection {
	private static final String DRIVER =
			"com.mysql.cj.jdbc.Driver";
//	"com.mysql.jdbc.Driver";
	private static final String URL =
			"jdbc:mysql://127.0.0.1:3306/demo?serverTimezone=UTC";
	private static final String USER ="temp";
	private static final String PWD = "temp";
	
	@Test
	public void testConn() throws Exception{
		Class.forName(DRIVER);
		
		try(Connection conn = DriverManager.getConnection(URL, USER, PWD)){
			System.out.println(conn);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
