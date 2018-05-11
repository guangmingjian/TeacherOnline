package com.imu.dao;

import com.imu.entity.Response;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ResponseDao {
    public List<Response> queryByQuId(@Param("quId") int quId);
    public boolean addResponse(Response response);
    public Response queryByReId(String reId);
}
