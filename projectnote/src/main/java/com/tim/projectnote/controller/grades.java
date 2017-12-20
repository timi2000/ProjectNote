package com.tim.projectnote.controller;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class grades {

    private final JdbcTemplate abc;


    public grades (JdbcTemplate test) {
        abc = test;
    }

    @RequestMapping("/grades")
    public String index() {




        //DSL.selectFrom(dfjdasfhja).

        return "Greetigighjghjkngs from Spring Boot!";
    }
}
