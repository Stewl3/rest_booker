package com.stewie.rest_booker.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stewie.rest_booker.DAO.BasicDAO;
import com.stewie.rest_booker.DAO.User;

@Service
public class LoginSerivceImpl implements LoginService {

    @Autowired
    private BasicDAO dao;

    @Override
    public boolean validateUser(String email, String password, HttpServletRequest request) {
        User emptyUser = new User();
        emptyUser.setUserEmail(email);
        emptyUser.setUserPassword(password);
        User fullUser = dao.getUserByEmailAndPassword(emptyUser);

        HttpSession session = request.getSession();
        session.setAttribute("userFirstName", fullUser.getUserFirstName());
        session.setAttribute("userLastName", fullUser.getUserLastName());
        session.setAttribute("userEmail", fullUser.getUserEmail());

        System.out.println(fullUser);

        try {
            User daoUser = dao.getUserByEmailAndPassword(emptyUser);
            if (daoUser == null) {
                return false;
            } else {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
