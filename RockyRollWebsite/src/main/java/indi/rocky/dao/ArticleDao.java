package indi.rocky.dao;

import indi.rocky.entity.Article;
import indi.rocky.entity.Category;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ArticleDao {

    Article getArticleById(@Param("id") Long id);

    List<Article> getFirst10Article();

    List<Article> getArticlesByCategoryName(Long categoryId);

    List<Category> getCategories();

    void writeBlog(Article article);

    Long getCategoryIdByName(String name);

    void deleteArticleById(Long id);

    void updateArticleById(Article article);

    Category getCategoryById(Long id);
}
