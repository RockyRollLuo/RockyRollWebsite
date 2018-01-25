package indi.rocky.service;

import indi.rocky.entity.Article;
import indi.rocky.entity.Category;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ArticleService {

    Article getArticleById(Long id);

    List<Article> getFirst10Article();

    List<Category> getCategories();

    void writeBlog(Article article);

    void deleteArticleById(Long id);

    void updateBlog(Article article);

    List<Article> getArticlesByCategoryName(String name);
}
