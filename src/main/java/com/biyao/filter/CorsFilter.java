package com.biyao.filter;
import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;


/**
 * CorsFileter 功能描述：CORS过滤器
 *
 * @author RickyLee【l**@*.com.cn】
 * @date 2017/2/9 11:24
 */
@Component
public class CorsFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        String originHeader = request.getHeader("Origin");
      //  String[] IPs = {"http://localhost:3000","http://localhost:8000","http://localhost:8080"};
        //if (Arrays.asList(IPs).contains(originHeader)){
            response.setHeader("Access-Control-Allow-Origin", originHeader);
            response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
            response.setHeader("Access-Control-Max-Age", "3600");
            response.setHeader("Access-Control-Allow-Headers","Origin, X-Requested-With, Content-Type, Accept");
            response.setHeader("","");
            response.setHeader("","");
            response.setHeader("Access-Control-Allow-Credentials", "true");
            filterChain.doFilter(servletRequest, servletResponse);
       // }
    }

    @Override
    public void destroy() {

    }
}