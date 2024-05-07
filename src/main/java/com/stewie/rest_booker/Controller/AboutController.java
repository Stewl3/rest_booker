package com.stewie.rest_booker.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = { "/about" })
public class AboutController {
    @GetMapping
    public ModelAndView aboutView() {
        ModelAndView model = new ModelAndView();
        model.setViewName("about");
        return model;
    }

}
