package com.stewie.rest_booker.Controller;

import java.io.FileInputStream;
import java.io.InputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MenuController {

    @GetMapping("/menu")
    public ModelAndView menuView() {
        ModelAndView model = new ModelAndView();

        model.setViewName("menu");

        return model;
    }

    @GetMapping("/Views/Images/Menu.jpg")
    public void menuImg(HttpServletResponse response) {
        try {
            InputStream stream = new FileInputStream(
                    "G:/Code/rest_booker/src/main/webapp/WEB-INF/Views/Images/Menu.jpg");
            response.setContentType(MediaType.IMAGE_JPEG_VALUE);
            StreamUtils.copy(stream, response.getOutputStream());
        } catch (Exception e) {
            System.out.println("Could not display the image");
            e.printStackTrace();
        }
    }

}
