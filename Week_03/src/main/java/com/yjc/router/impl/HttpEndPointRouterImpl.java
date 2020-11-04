package com.yjc.router.impl;

import com.yjc.router.HttpEndpointRouter;

import java.util.List;
import java.util.Random;

public class HttpEndPointRouterImpl implements HttpEndpointRouter {
    //随机取
    @Override
    public String route(List<String> endpoints) {

       return endpoints.get(new Random().nextInt(endpoints.size()));
    }
}
