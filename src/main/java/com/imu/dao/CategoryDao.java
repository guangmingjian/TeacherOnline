package com.imu.dao;

import com.imu.entity.Category;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CategoryDao {
    public Category getCateByNameID(@Param("uId") String uId,@Param("cataName") String cataName  );
    public List<Category> getCateByUId(String uId);
}
