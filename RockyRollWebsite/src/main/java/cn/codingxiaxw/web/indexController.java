package cn.codingxiaxw.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/index")//url:模块/资源/{}/细分
public class indexController
{

    @RequestMapping(value = "",method = RequestMethod.GET)
    public String index()
    {
        return "index";
    }

}























