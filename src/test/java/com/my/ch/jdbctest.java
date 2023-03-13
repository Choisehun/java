package com.my.ch;



import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class jdbctest {
	String database = "springboard";
	String url = "jdbc:mysql://localhost:3306/"+database;
	String id = "root";
	String pw = "0000";
	
	static {
		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConnection() {
		try(Connection con =
				DriverManager.getConnection(url,id,pw)){
			log.info(con);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}
}
