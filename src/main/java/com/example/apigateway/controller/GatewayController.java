package com.example.apigateway.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GatewayController {

//  @PostMapping("/")
//  public void getUserFromToken(HttpServletRequest request) {
//    if ()
//  }

    @GetMapping("/hello")
    public String hello () {
        return "Hello World";
    }
}
