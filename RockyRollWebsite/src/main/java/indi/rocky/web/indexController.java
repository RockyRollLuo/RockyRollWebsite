package indi.rocky.web;

import indi.rocky.dto.CommonDto;
import indi.rocky.dto.UserDto;
import indi.rocky.entity.RPerson;
import indi.rocky.enums.CommonDtoCodeEnum;
import indi.rocky.service.LoginService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.jws.soap.SOAPBinding;

@Controller
public class indexController {

    //获取日志
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private LoginService loginService;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/error", method = {RequestMethod.GET, RequestMethod.POST})
    public String error() {
        return "error";
    }


    @RequestMapping(value = "/login", method = {RequestMethod.GET, RequestMethod.POST})
    public String login() {

        return "login";
    }

    @RequestMapping(value = "/sign-up", method = {RequestMethod.GET, RequestMethod.POST})
    public String signup() {

        return "sign-up";
    }

    @RequestMapping(value = "/forgot", method = {RequestMethod.GET, RequestMethod.POST})
    public String forgot() {

        return "forgot";
    }

    /**
     * 登录验证
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/login-validatioin", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String loginValidatioin(Model model,
                                   @RequestParam(value = "email",required = true)String email,
                                   @RequestParam(value = "password",required = true)String password) {
        CommonDto<UserDto> commonDto = new CommonDto<UserDto>();
        RPerson rPerson=new RPerson();
        rPerson.setEmail(email);
        rPerson.setPassword(password);
        try {
            UserDto userDto = loginService.getUserDto(rPerson);
            commonDto.setData(userDto);
            if (userDto == null) {
                commonDto.setCode(CommonDtoCodeEnum.FAIL.getState());
                commonDto.setMessage("无法获取用户数据信息");
            }else {
                commonDto.setCode(CommonDtoCodeEnum.SUCCESS.getState());
                commonDto.setMessage("以获取用户信息！");
            }
        } catch (Exception e) {
            commonDto.setCode(CommonDtoCodeEnum.EXCEPTION.getState());
            commonDto.setMessage("获取用户信息异常！");
        }


        return "login";
    }

    @RequestMapping(value = "/content/{type}", method = {RequestMethod.GET, RequestMethod.POST})
    public String sendMessage(@PathVariable("type") String type) {
        logger.info("content={}", type);
        String retval = "error";
        if (type.equalsIgnoreCase("interest")) {
            retval = "content/interest";
        } else if (type.equalsIgnoreCase("work")) {
            retval="content/work";
        } else if (type.equalsIgnoreCase("fun")) {
            retval="content/fun";
        }
        return retval;
    }


    /**
     * 发送邮件
     *
     * @param name
     * @param email
     * @param message
     * @return
     */
    @RequestMapping(value = "/send-message", method = {RequestMethod.GET, RequestMethod.POST})
    public String sendMessage(@RequestParam(value = "name", required = true) String name,
                              @RequestParam(value = "email", required = true) String email,
                              @RequestParam(value = "message", required = true) String message) {
        String message_name = name;
        String message_email = email;
        String message_content = message;

        logger.info("message_name={},message_email={}", message_name, message_email);
        /*
        todo:打开本地邮箱插入信息
         */
        return "index";
    }

}























