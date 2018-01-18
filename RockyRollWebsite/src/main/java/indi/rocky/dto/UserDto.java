package indi.rocky.dto;

/**
 * @Date: 2018/1/18
 * @Author: luoqi3
 */

import java.util.Date;

/**
 * 用户登陆后存在session的一个对象
 * 包括一些RPerson中的属性，和一些登录状态的属性
 */
public class UserDto {
    private String email; //邮箱
    private String nickName;
    private String name;
    private String sex;
    private Date birthday;
    private String selfBrief;//个人简介
    private int personType;
    private String lastLoginIp;
    private int personId;

    private Date loginTime; //本次登入系统的时间

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
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

    public String getSelfBrief() {
        return selfBrief;
    }

    public void setSelfBrief(String selfBrief) {
        this.selfBrief = selfBrief;
    }

    public int getPersonType() {
        return personType;
    }

    public void setPersonType(int personType) {
        this.personType = personType;
    }

    public String getLastLoginIp() {
        return lastLoginIp;
    }

    public void setLastLoginIp(String lastLoginIp) {
        this.lastLoginIp = lastLoginIp;
    }

    public int getPersonId() {
        return personId;
    }

    public void setPersonId(int personId) {
        this.personId = personId;
    }

    public Date getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(Date loginTime) {
        this.loginTime = loginTime;
    }
}
