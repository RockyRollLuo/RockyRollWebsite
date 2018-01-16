package indi.rocky.entity;

import java.util.Date;

/**
 * @Date: 2018/1/15
 * @Author: luoqi3
 */
public class RPerson {

    private String email; //邮箱
    private String password; //密码
    private String nickName;
    private String name;
    private String sex;
    private Date birthday;
    private String selfBrief;//个人简介

    private int personType;
    private String lastLoginIp;
    private Date lastLoginDate;

    /*
     * 通用
     */
    private int personId;
    private int isDelete;
    private Date createTime;
    private Date updateTime;
    private int createPersonId;
    private int updatePersonId;

    /*
     * setter getter
     */

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public Date getLastLoginDate() {
        return lastLoginDate;
    }

    public void setLastLoginDate(Date lastLoginDate) {
        this.lastLoginDate = lastLoginDate;
    }

    public int getPersonId() {
        return personId;
    }

    public void setPersonId(int personId) {
        this.personId = personId;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public int getCreatePersonId() {
        return createPersonId;
    }

    public void setCreatePersonId(int createPersonId) {
        this.createPersonId = createPersonId;
    }

    public int getUpdatePersonId() {
        return updatePersonId;
    }

    public void setUpdatePersonId(int updatePersonId) {
        this.updatePersonId = updatePersonId;
    }
}
