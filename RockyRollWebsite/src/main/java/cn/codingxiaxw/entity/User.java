package cn.codingxiaxw.entity;

import java.util.Date;

/**
 * @Date: 2018/1/15
 * @Author: luoqi3
 */
public class User {
    private int id;
    private String value1; //邮箱
    private String value2; //密码

    private String name;
    private String sex;
    private Date birthday;

    private int userType;
    private String lastLoginIp;
    private Date lastLoginDate;

    private String selfBrief;//个人简介

    public int getUserType() {
        return userType;
    }

    public void setUserType(int userType) {
        this.userType = userType;
    }

    public String getLastLoginIp() {
        return lastLoginIp;
    }

    public void setLastLoginIp(String lastLoginIp) {
        this.lastLoginIp = lastLoginIp;
    }

    public Date getLastLoginDate() {
        return lastLoginDate;
    }

    public void setLastLoginDate(Date lastLoginDate) {
        this.lastLoginDate = lastLoginDate;
    }

    public String getSelfBrief() {
        return selfBrief;
    }

    public void setSelfBrief(String selfBrief) {
        this.selfBrief = selfBrief;
    }

    public int getId() {
        return id;

    }

    public void setId(int id) {
        this.id = id;
    }

    public String getValue1() {
        return value1;
    }

    public void setValue1(String value1) {
        this.value1 = value1;
    }

    public String getValue2() {
        return value2;
    }

    public void setValue2(String value2) {
        this.value2 = value2;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

}
