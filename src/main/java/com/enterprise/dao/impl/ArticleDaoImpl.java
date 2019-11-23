package com.enterprise.dao.impl;

import com.enterprise.dao.BaseDao;
import com.enterprise.entity.Article;
import com.enterprise.entity.ArticleCategory;
import com.enterprise.entity.page.PageModel;
import com.enterprise.dao.ArticleDao;
import com.enterprise.service.ArticleCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Cesiumai on 2016/6/14.
 */
@Repository("articleDao")
public class ArticleDaoImpl implements ArticleDao {
    @Resource
    private BaseDao dao;
    @Autowired
    private ArticleCategoryService articleCategoryService;

    public void setDao(BaseDao dao) {
        this.dao = dao;
    }

    @Override
    public int insert(Article article) {
        String categoryid = article.getCategoryId();
        System.out.println(categoryid);
        ArticleCategory articleCategory = new ArticleCategory();
        articleCategory.setId(Integer.valueOf(categoryid));
        ArticleCategory category =  (ArticleCategory)dao.selectOne("articlecategory.selectOne", articleCategory);
        System.out.println(category.getCode());
        String code = category.getCode();
        System.out.println(code);
        article.setCode(code);
        return dao.insert("article.insert",article);
    }

    @Override
    public int delete(Article article) {
        return dao.delete("article.delete",article);
    }

    @Override
    public int update(Article article) {
        return dao.update("article.update",article);
    }

    @Override
    public Article selectOne(Article article) {
        return (Article) dao.selectOne("article.selectOne",article);
    }

    @Override
    public PageModel selectPageList(Article article) {
        return dao.selectPageList("article.selectPageList","article.selectPageCount",article);
    }

    @Override
    public List<Article> selectList(Article article) {
        return dao.selectList("article.selectList",article);
    }

    @Override
    public int deleteById(int id) {
        return dao.delete("article.deleteById",id);
    }

    @Override
    public Article selectById(int id) {
        return (Article) dao.selectOne("article.selectById",id);
    }

    @Override
    public Article selectPrevious(int id) {
        return (Article) dao.selectOne("article.selectPrevious",id);
    }

    @Override
    public Article selectNext(int id) {
        return (Article) dao.selectOne("article.selectNext",id);
    }
}
