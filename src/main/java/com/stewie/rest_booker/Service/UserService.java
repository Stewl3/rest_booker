package com.stewie.rest_booker.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stewie.rest_booker.DAO.BasicDAO;
import com.stewie.rest_booker.DAO.User;

@Service
public class UserService {
    @Autowired
    private BasicDAO dao;

    public List<User> getAllUsers() {
        return dao.getAllUsers();
    }

}
