package indi.rocky.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by luoqi3 on 2017/11/17.
 */

@Repository
public class UerDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;


}
