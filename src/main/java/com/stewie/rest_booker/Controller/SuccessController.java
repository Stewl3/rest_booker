package com.stewie.rest_booker.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.stewie.rest_booker.DAO.BasicDAO;
@Controller
@RequestMapping(value = { "/user" })
public class SuccessController {

    @Autowired
    BasicDAO dao;

    @RequestMapping(value = { "/success" }, method = RequestMethod.POST)
    public ModelAndView successView() {
        ModelAndView model = new ModelAndView();
        model.setViewName("success");
        return model;
    }
}