package indi.rocky.web.blog;

import indi.rocky.entity.Article;
import indi.rocky.entity.Category;
import indi.rocky.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.tautua.markdownpapers.Markdown;
import org.tautua.markdownpapers.parser.ParseException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.StringReader;
import java.io.StringWriter;

import java.util.List;

/**
 * Created by luoqi3 on 2018/1/25.
 */
@Controller
public class ArticleController {
    @Autowired
    private ArticleService articleService;

    @RequestMapping("/")
    public String index(Model model) {
        List<Article> articles = articleService.getFirst10Article();
        for (Article article : articles) {
            System.out.println(article.getCategory());
        }
        model.addAttribute("articles", articles);
        return "views/index";
    }

    @RequestMapping("/column/{displayName}/{category}")
    public String column(@PathVariable("category") String category, Model model, @PathVariable("displayName") String displayName) {
        model.addAttribute("articles", articleService.getArticlesByCategoryName(category));
        model.addAttribute("displayName", displayName);
        return "views/columnPage";
    }

    @RequestMapping("/detail/{id}/{category}")
    public String detail(@PathVariable("id") Long id, Model model) {
        Article article = articleService.getArticleById(id);
        System.out.println(article.getContent());
        Markdown markdown = new Markdown();
        try {
            StringWriter out = new StringWriter();
            markdown.transform(new StringReader(article.getContent()), out);
            out.flush();
            article.setContent(out.toString());
            System.out.println("------------------");
            System.out.println(article.getContent());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        model.addAttribute("article", article);
        return "views/detail";
    }

    @RequestMapping("/sang")
    public String admin(Model model) {
        model.addAttribute("articles", articleService.getFirst10Article());
        return "admin/index";
    }


    @RequestMapping(method = RequestMethod.GET, value = "/sang/dologin")
    public String doLogin(HttpServletRequest request, Model model) {
        if (request.getSession().getAttribute("user") == null) {
            return "admin/login";
        }
        return "redirect:/sang";
    }

    @RequestMapping("/sang/write")
    public String write(Model model) {
        List<Category> categories = articleService.getCategories();
        categories.remove(0);
        model.addAttribute("categories", categories);
        return "admin/write";
    }

    @RequestMapping(value = "/sang/write", method = RequestMethod.POST)
    public String write(Article article) {
        if (article.getId() == 0l) {
            articleService.writeBlog(article);
        } else {
            articleService.updateBlog(article);
        }
        return "redirect:/sang";
    }

    @RequestMapping("/sang/delete/{id}")
    public String delete(@PathVariable("id") Long id) {
        articleService.deleteArticleById(id);
        return "redirect:/sang";
    }

    @RequestMapping("/sang/update/{id}")
    public String update(@PathVariable("id") Long id, Model model) {
        Article article = articleService.getArticleById(id);
        model.addAttribute("article", article);
        return "admin/write";
    }
}
