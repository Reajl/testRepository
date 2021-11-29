package com.company.controller;

import com.company.model.User;
import com.company.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import javax.validation.Valid;



@Controller
public class IndexController {
    User user;
    Long userID;

    @GetMapping("/")
    public String index(Model model) {
        System.out.println("INDEX");
        if (!SecurityContextHolder.getContext().getAuthentication().getPrincipal().toString().equals("anonymousUser")) {
            user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            userID = user.getId();
            System.out.println("userID" + userID);
            model.addAttribute("userID", userID);
        }
        return "index";
    }
    @GetMapping("/login")
    public String login(@RequestParam(value = "error", required = false) String error,
                       Model model) {
        if (error != null) {
            model.addAttribute("error","Неправильный логин или пароль");
        }
        return "login";
    }


}
