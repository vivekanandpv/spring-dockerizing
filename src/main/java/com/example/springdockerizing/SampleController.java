package com.example.springdockerizing;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SampleController {

    @GetMapping
    public String getBase() {
        return "Welcome to containerized Spring Boot application";
    }
}
