package indi.rocky.util;

import indi.rocky.vo.SignInFormVO;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Date: 2018/1/25
 * @Author: luoqi3
 */
public class SignInUtil {

    /**
     * 登录框 “记住我” 功能
     * @param signInFormVO
     * @param request
     * @param response
     */
    public static void rememberMeUtil(SignInFormVO signInFormVO, HttpServletRequest request, HttpServletResponse response) {

        //创建cookie存放登录信息
        Cookie signInNameCookie=new Cookie("signInName",signInFormVO.getName());
        Cookie signInPwCookie=new Cookie("signInPw",signInFormVO.getPassword());

        //cookie的有效路径
        String contextPath=request.getContextPath()+"/";
        signInNameCookie.setPath(contextPath);
        signInPwCookie.setPath(contextPath);

        //设置cookie的有效时间
        Integer maxAge=7*24*60*60;
        signInNameCookie.setMaxAge(maxAge);
        signInPwCookie.setMaxAge(maxAge);

        //将cookie存放到response中
        response.addCookie(signInNameCookie);
        response.addCookie(signInPwCookie);
    }

}
