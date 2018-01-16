package indi.rocky.dao;

import indi.rocky.entity.RPerson;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface RPersonDao
{
    /**
     * 根据id查询person
     * @param id
     * @return
     */
    RPerson queryOneById(long id);

    /**
     * 根据类型查询person list
     * @param personType
     * @return
     */
    List<RPerson> queryListByType(@Param("personType") int personType);

}
