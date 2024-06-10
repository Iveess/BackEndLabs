package com.example.helloworld;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class HelloController {
    @GetMapping(value = {"/", "/hello"})
    public String greetMessage(Model model) {
        String helloworld="HI guys!";
        model.addAttribute("message", helloworld);
        return "hello";
    }
}