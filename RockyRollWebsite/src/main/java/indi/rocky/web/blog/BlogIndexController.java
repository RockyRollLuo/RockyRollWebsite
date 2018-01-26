package indi.rocky.web.blog;

import indi.rocky.entity.Article;
import indi.rocky.entity.Category;
import indi.rocky.entity.RPerson;
import indi.rocky.service.ArticleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
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

    @Autowired
    private ArticleService articleService;

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

    /**
     * 进入写文章
     * @return
     */
    @RequestMapping("/write")
    public String write(Model model) {
        List<Category> categories = articleService.getCategories();
        categories.remove(0);
        model.addAttribute("categories", categories);
        return "blog/write";
    }



    /**
     * 进入目录
     * @param model
     * @return
     */
    @RequestMapping("/catalogue")
    public String index(Model model) {
        List<Article> articles =articleService.getFirst10Article();
        model.addAttribute("articles", articles);
        return "blog/catalogue";
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


