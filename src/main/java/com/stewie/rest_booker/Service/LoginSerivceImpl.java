package com.stewie.rest_booker.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stewie.rest_booker.DAO.BasicDAO;
import com.stewie.rest_booker.DAO.User;

@Service
public class LoginSerivceImpl implements LoginService {

    @Autowired
    private BasicDAO dao;

    @Override
    public boolean validateUser(String email, String password) {
        User user = new User();
        user.setUserEmail(email);
        user.setUserPassword(password);
        try {
            User daoUser = dao.getUserByEmailAndPassword(user);
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
