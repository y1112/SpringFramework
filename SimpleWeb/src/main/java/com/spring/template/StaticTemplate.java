package com.spring.template;

import org.springframework.jdbc.core.JdbcTemplate;

public class StaticTemplate {
	public static JdbcTemplate template;//메모리에 일단 올라와있기 때문에 항상 공유 가능
}
