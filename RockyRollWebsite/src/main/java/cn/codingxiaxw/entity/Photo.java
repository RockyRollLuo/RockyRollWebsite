package cn.codingxiaxw.entity;

import java.util.ArrayList;
import java.util.Date;

/**
 * @Date: 2018/1/15
 * @Author: luoqi3
 */
public class Photo {
    private int id; //图片id
    private int uid;//上传人ID
    private String photoname;//照片名
    private String savename;//保存名
    private Date savetime;//保存时间
    private Date taketime;//拍摄时间
    private String place;//拍摄地点

    private int type;//照片类型

    private ArrayList<Integer> containUids; //包含用户的id

    private ArrayList<String> containNames; //照片中所拥有的的人的名字

    private ArrayList<String> tags; //照片标签


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getPhotoname() {
        return photoname;
    }

    public void setPhotoname(String photoname) {
        this.photoname = photoname;
    }

    public String getSavename() {
        return savename;
    }

    public void setSavename(String savename) {
        this.savename = savename;
    }

    public Date getSavetime() {
        return savetime;
    }

    public void setSavetime(Date savetime) {
        this.savetime = savetime;
    }

    public Date getTaketime() {
        return taketime;
    }

    public void setTaketime(Date taketime) {
        this.taketime = taketime;
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
}
