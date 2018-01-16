package indi.rocky.enums;

/** 使用枚举表示常量数据字段
 */
public enum PhotoTypeEnum {

    CHARACTER(1,"人物"),
    GOOD(2,"物品"),
    SCENERY(3,"风景"),
    MEMORY(4,"回忆"),
    SUNDRY(5,"杂物");


    private int type;
    private String info;

    PhotoTypeEnum(int type, String info) {
        this.type = type;
        this.info = info;
    }

    public int getType() {
        return type;
    }


    public String getInfo() {
        return info;
    }


    public static PhotoTypeEnum stateOf(int index)
    {
        for (PhotoTypeEnum type : values())
        {
            if (type.getType()==index)
            {
                return type;
            }
        }
        return null;
    }
}
