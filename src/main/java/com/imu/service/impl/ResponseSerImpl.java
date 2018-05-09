package com.imu.service.impl;

import com.imu.dao.ResponseDao;
import com.imu.entity.Response;
import com.imu.service.ResponseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResponseSerImpl implements ResponseService {
    @Autowired
    ResponseDao responseDao;
    public boolean addResponse(Response response) {
        if(responseDao.addResponse(response)) return true;
        return false;
    }

    public List<Response> responsesByquId(int queId) {

        return  responseDao.queryByQuId(queId);
    }
}
