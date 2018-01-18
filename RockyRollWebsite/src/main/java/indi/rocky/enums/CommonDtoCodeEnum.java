package indi.rocky.enums;

/**
 * 通用数据传输对象传输结果
 */
public enum CommonDtoCodeEnum {

    FAIL(0,"失败"),
    SUCCESS(1,"成功"),
    EXCEPTION(2,"异常");



    private int code;
    private String info;

    CommonDtoCodeEnum(int state, String info) {
        this.code = state;
        this.info = info;
    }

    public int getState() {
        return code;
    }


    public String getInfo() {
        return info;
    }


    public static CommonDtoCodeEnum codeOf(int index)
    {
        for (CommonDtoCodeEnum code : values())
        {
            if (code.getState()==index)
            {
                return code;
            }
        }
        return null;
    }
}
