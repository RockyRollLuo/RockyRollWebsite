package indi.rocky.controller;

import indi.rocky.model.User;
import indi.rocky.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by luoqi3 on 2017/11/17.
 */

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/register")
    public String userRegister(){


        return "user/register";
    }


    @RequestMapping(value = "/save" , method = RequestMethod.POST)
    public ModelAndView saveUser(User user){
        userService.saveUser(user);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("user/saveSuccess");
        mav.addObject("user",user);
        return mav;
    }

}
