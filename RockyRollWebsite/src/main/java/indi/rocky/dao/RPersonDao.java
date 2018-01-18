package indi.rocky.dao;

import indi.rocky.entity.RPerson;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
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


    /**
     * 根据用户名和密码获取用户对象
     * @param rPerson
     * @return
     */
    RPerson queryOneByEmailAndPassword(RPerson rPerson);


}
