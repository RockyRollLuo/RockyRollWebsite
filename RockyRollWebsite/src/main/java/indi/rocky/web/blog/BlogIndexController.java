package indi.rocky.web.blog;

import indi.rocky.entity.RPerson;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

/**
 * @Date: 2018/1/25
 * @Author: luoqi3
 */
@Controller
@RequestMapping(value = "/blog")
public class BlogIndexController {

    //获取日志
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    /**
     * 进入首页
     *
     * @return
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView index() {
        Map<String, RPerson> model = new HashMap<String, RPerson>();
        RPerson rPerson = new RPerson();
        //TODO 获取用户信息
        model.put("User", rPerson);
        return new ModelAndView("/blog/index", model);
    }

    /*
     * 进入模板
     *
     * @return
     */
    @RequestMapping(value = "/template", method = RequestMethod.GET)
    public ModelAndView tempalte() {
        Map<String, RPerson> model = new HashMap<String, RPerson>();
        RPerson rPerson = new RPerson();
        //TODO 获取用户信息
        model.put("User", rPerson);
        return new ModelAndView("/blog/template", model);
    }

}


