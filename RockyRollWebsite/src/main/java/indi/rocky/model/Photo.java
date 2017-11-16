package indi.rocky.model;

import java.util.ArrayList;
import java.util.Date;

public class Photo {

    private int id; //图片id
    private int uid;//上传人ID
    private String photoname;//照片名
    private String savename;//保存名
    private Date savetime;//保存时间
    private Date taketime;//拍摄时间
    private String place;//拍摄地点

    private ArrayList<Integer> containUids; //包含用户的id

    private ArrayList<String> containNames; //照片中所拥有的的人的名字

    private ArrayList<String> tags; //照片标签




}
