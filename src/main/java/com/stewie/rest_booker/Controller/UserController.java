package com.stewie.rest_booker.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.stewie.rest_booker.DAO.BasicDAO;
import com.stewie.rest_booker.DAO.User;

@Controller
@RequestMapping(value={"/users"})
public class UserController {
     @Autowired
    private BasicDAO dao;

    @GetMapping
    public ModelAndView displayUsers(HttpServletRequest request) {

        HttpSession session = request.getSession();
        String userRole = session.getAttribute("userRole").toString();

        ModelAndView model = new ModelAndView("users");
        if (userRole.equals("Admin")) {
            return model;
        } else {
            session.setAttribute("error", "You do not have permission to access this page.");
            return new ModelAndView("redirect:/error");
        }

    }

    @RequestMapping(value = { "/getAll" }, method = RequestMethod.GET)
    @ResponseBody
    public ArrayList<User> showAllUsers() {
        return dao.getAllUsers();

    }

    @RequestMapping(value = { "/delete" }, method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<String> deleteUser(int id) {
        
        User user = new User();
        user.setUserID(id);
        dao.deleteUser(user);

        if (user.equals(null)) {
            return new ResponseEntity<String>("User ID cannot be null", HttpStatus.BAD_REQUEST);
        } else {
            return new ResponseEntity<String>("User deleted successfully", HttpStatus.OK);

        }
    }
}
