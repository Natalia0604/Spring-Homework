package com.fstop.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

// Spring Boot的核心註解，必須放在Application Class，而 main 方法，用於啟動 Spring Boot Application。
@SpringBootApplication
public class TestApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(TestApplication.class);
	}
	public static void main(String[] args) {
		SpringApplication.run(TestApplication.class, args);
	}

}