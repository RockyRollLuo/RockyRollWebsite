package indi.rocky.util;

/**
 * Created by luoqi3 on 2018/1/25.
 */

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * 登录验证拦截
 */
public class LoginInterceptor implements HandlerInterceptor {

    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        httpServletRequest.setCharacterEncoding("UTF-8");
        StringBuffer requestURL = httpServletRequest.getRequestURL();

        //todo 写成配置文件形式 配置需要拦截的地址
        List<String> interceptorList = new ArrayList<String>();
        interceptorList.add("/blog");

        if (requestURL.toString().contains("blog")&&!requestURL.toString().contains("index")) {

            Object user = httpServletRequest.getSession().getAttribute("user");
            if (user == null) {
                httpServletResponse.sendRedirect("/login");
                return false;
            } else {
                return true;
            }
        }else{
            return true;
        }
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
