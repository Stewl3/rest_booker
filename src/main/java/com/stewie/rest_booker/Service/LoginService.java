package com.stewie.rest_booker.Service;

import javax.servlet.http.HttpServletRequest;

public interface LoginService {
    boolean validateUser(String name, String password, HttpServletRequest request);
}
