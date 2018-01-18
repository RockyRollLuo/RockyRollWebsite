package indi.rocky.dto;

/**
 * @Date: 2018/1/18
 * @Author: luoqi3
 */

/**
 * 通用数据传输对象
 * @param <T>
 */
public class CommonDto<T> {

    private T data;

    private int code;

    private String message;

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
