package indi.rocky.entity;

import java.util.ArrayList;
import java.util.Date;

/**
 * @Date: 2018/1/15
 * @Author: luoqi3
 */
public class RPhoto {

    private String photoname;//照片名
    private String place;//拍摄地点
    private int type;//照片类型
    private String url;//照片位置

    private ArrayList<Integer> containUids; //包含用户的id
    private ArrayList<String> containNames; //照片中所拥有的的人的名字
    private ArrayList<String> tags; //照片标签

    /*
    * 通用
    */
    private int photoId;
    private int isDelete;
    private Date createTime;
    private Date updateTime;
    private int createUserId;
    private int updateUserId;

    /*
     * getter setter
     */

    public String getPhotoname() {
        return photoname;
    }

    public void setPhotoname(String photoname) {
        this.photoname = photoname;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public ArrayList<Integer> getContainUids() {
        return containUids;
    }

    public void setContainUids(ArrayList<Integer> containUids) {
        this.containUids = containUids;
    }

    public ArrayList<String> getContainNames() {
        return containNames;
    }

    public void setContainNames(ArrayList<String> containNames) {
        this.containNames = containNames;
    }

    public ArrayList<String> getTags() {
        return tags;
    }

    public void setTags(ArrayList<String> tags) {
        this.tags = tags;
    }

    public int getPhotoId() {
        return photoId;
    }

    public void setPhotoId(int photoId) {
        this.photoId = photoId;
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

    public int getCreateUserId() {
        return createUserId;
    }

    public void setCreateUserId(int createUserId) {
        this.createUserId = createUserId;
    }

    public int getUpdateUserId() {
        return updateUserId;
    }

    public void setUpdateUserId(int updateUserId) {
        this.updateUserId = updateUserId;
    }
}
