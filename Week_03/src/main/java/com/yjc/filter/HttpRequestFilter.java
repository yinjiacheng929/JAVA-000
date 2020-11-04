package com.yjc.filter;

import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.http.FullHttpRequest;

import javax.servlet.Filter;

public interface HttpRequestFilter extends  Filter {
    
    void filter(FullHttpRequest fullRequest, ChannelHandlerContext ctx);
    
}
