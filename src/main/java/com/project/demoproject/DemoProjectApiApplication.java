package com.project.demoproject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;


@SpringBootApplication
@ComponentScan("com")
public class DemoProjectApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoProjectApiApplication.class, args);
		
		System.out.println("project running ");
	}

}
