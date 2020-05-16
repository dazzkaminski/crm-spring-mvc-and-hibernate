package com.webcustomertracker;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@SpringBootApplication(exclude = HibernateJpaAutoConfiguration.class)
public class WebcustomertrackerApplication {

    public static void main(String[] args) {
        SpringApplication.run(WebcustomertrackerApplication.class, args);
    }

}
