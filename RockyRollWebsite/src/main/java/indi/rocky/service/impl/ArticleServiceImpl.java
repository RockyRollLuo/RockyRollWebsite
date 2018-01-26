package indi.rocky.service.impl;

import indi.rocky.dao.ArticleDao;
import indi.rocky.entity.Article;
import indi.rocky.entity.Category;
import indi.rocky.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by luoqi3 on 2018/1/25.
 */
@Service
public class ArticleServiceImpl implements ArticleService {

    @Resource
    private ArticleDao articleDao;

    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");

    public Article getArticleById(Long id) {
        Article article = articleDao.getArticleById(id);
        article.setCategory(articleDao.getCategoryById(article.getCategoryId()).getDisplayName());
        return article;
    }

    public List<Article> getFirst10Article() {
        return articleDao.getFirst10Article();
    }

    public List<Category> getCategories() {
        return articleDao.getCategories();
    }

    public void writeBlog(Article article) {
        Long categoryId = articleDao.getCategoryIdByName(article.getCategory());
        article.setCategoryId(categoryId);
        article.setDate(sdf.format(new Date()));
        if (article.getSummary() == null || "".equals(article.getSummary())) {
            if (article.getContent().length() > 20) {
                article.setSummary(article.getContent().substring(0, 20));
            } else {
                article.setSummary(article.getContent().substring(0, article.getContent().length()));
            }
        }
        articleDao.writeBlog(article);
    }

    public void deleteArticleById(Long id) {
        articleDao.deleteArticleById(id);
    }

    public void updateBlog(Article article) {
        article.setDate(sdf.format(new Date()));
        if (article.getSummary() == null || "".equals(article.getSummary())) {
            if (article.getContent().length() > 20) {
                article.setSummary(article.getContent().substring(0, 20));
            } else {
                article.setSummary(article.getContent().substring(0, article.getContent().length()));
            }
        }
        articleDao.updateArticleById(article);
    }

    public List<Article> getArticlesByCategoryName(String name) {
        Long categoryId = articleDao.getCategoryIdByName(name);
        return articleDao.getArticlesByCategoryName(categoryId);
    }
}
