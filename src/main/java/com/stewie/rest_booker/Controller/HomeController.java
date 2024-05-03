package com.stewie.rest_booker.Controller;

import java.io.FileInputStream;
import java.io.InputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = { "/" })
public class HomeController {

    @Autowired
    ServletContext servletContext;

    @GetMapping
    public ModelAndView homeView() {
        ModelAndView model = new ModelAndView();

        model.setViewName("Home");

        return model;
    }

    @GetMapping("Views/Images/Honeypot_logo.png")
    public void imgHandler(HttpServletResponse response) {
        try {
            InputStream stream = new FileInputStream(
                    "G:/Code/Honey Pot Restaurant(Side Project)/src/main/webapp/WEB-INF/Views/Images/Honeypot_logo.png");
            response.setContentType(MediaType.IMAGE_JPEG_VALUE);
            StreamUtils.copy(stream, response.getOutputStream());

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
