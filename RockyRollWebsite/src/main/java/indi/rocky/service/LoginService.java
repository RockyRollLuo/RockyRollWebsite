package indi.rocky.service;

import indi.rocky.dao.RPersonDao;
import indi.rocky.dto.Exposer;
import indi.rocky.dto.SeckillExecution;
import indi.rocky.dto.UserDto;
import indi.rocky.entity.RPerson;
import indi.rocky.entity.Seckill;
import indi.rocky.exception.RepeatKillException;
import indi.rocky.exception.SeckillCloseException;
import indi.rocky.exception.SeckillException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 用户登录的一些服务
 */
@Service
public interface LoginService {

    /**
     * 由RPerson中的一些参数获取RPerson对象
     * @param rPerson
     * @return
     */
    UserDto getUserDto(RPerson rPerson);



}
