package indi.rocky.service.impl;

import indi.rocky.dao.RPersonDao;
import indi.rocky.dto.UserDto;
import indi.rocky.entity.RPerson;
import indi.rocky.service.LoginService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;


@Service
public class LoginServiceImpl implements LoginService {
    //日志对象
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private RPersonDao rPersonDao;


    public UserDto getUserDto(RPerson rPerson) {
        UserDto userDto = new UserDto();
        RPerson rPerson1 = new RPerson();
        try {
            rPerson1=rPersonDao.queryOneByEmailAndPassword(rPerson);
            if (rPerson1 != null) {
                userDto.setBirthday(rPerson1.getBirthday());
                userDto.setEmail(rPerson1.getEmail());
                userDto.setLastLoginIp(rPerson1.getLastLoginIp());
                userDto.setName(rPerson1.getName());
                userDto.setNickName(rPerson1.getNickName());
                userDto.setLoginTime(new Date());//当前时间
            }
        } catch (Exception e) {
            logger.error("获取用户信息异常={}",e);
        }
        return userDto;
    }
}







