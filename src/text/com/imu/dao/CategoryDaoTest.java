package com.imu.dao;

import com.imu.entity.Category;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-service.xml",
        "classpath:spring/spring-dao.xml"})
public class CategoryDaoTest {
    @Autowired
    CategoryDao categoryDao;
    @Test
    public void getCateByNameID() {
        List<Category> categories = categoryDao.getCateByUId("1");
        for (Category category:categories
             ) {
            System.out.println(category.getCataName());
        }
    }

    @Test
    public void getCateByNameID1() {
        Category category = categoryDao.getCateByNameID("1","java");
        System.out.println(category.toString());
    }
}