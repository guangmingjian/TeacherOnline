package com.imu.service;

import com.imu.entity.Response;

import java.util.List;

public interface ResponseService {
    public boolean addResponse(Response response);
    public List<Response> responsesByquId(int queId);
}
