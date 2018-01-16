package indi.rocky.dao.cache;

import indi.rocky.entity.Seckill;
import com.dyuproject.protostuff.LinkedBuffer;
import com.dyuproject.protostuff.ProtostuffIOUtil;
import com.dyuproject.protostuff.runtime.RuntimeSchema;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

/**
 * Created by codingBoy on 17/2/17.
 */

/**
 * get from cache
 * if null
 *     get db
 * else
 *     put cache
 */

public class RedisDao {
    private final JedisPool jedisPool;

    public RedisDao(String ip, int port) {
        jedisPool = new JedisPool(ip, port);
    }

    //protostuff工具需要自己创建schema，用于反序列化
    private RuntimeSchema<Seckill> schema = RuntimeSchema.createFrom(Seckill.class);


    //get方法，获取字节码文-->反序列化-->得到seckill实例
    public Seckill getSeckill(long seckillId) {
        //redis操作逻辑
        try {
            Jedis jedis = jedisPool.getResource();
            try {
                String key = "seckill:" + seckillId;//redis的key命名一般采用[操作名：id]的形式
                //并没有实现哪部序列化操作
                //get->byte[]->反序列化->Object[Seckill]
                //采用自定义序列化
                //protostuff:谷歌的序列化工具
                byte[] bytes = jedis.get(key.getBytes());
                //缓存重获取到
                if (bytes != null) {
                    Seckill seckill=schema.newMessage();
                    ProtostuffIOUtil.mergeFrom(bytes,seckill,schema);
                    //seckill被反序列化
                    return seckill;
                }
            }finally {
                jedis.close();
            }
        }catch (Exception e) {

        }
        return null;
    }

    //put方法，seckill实例-->序列化-->byte[]
    public String putSeckill(Seckill seckill) {
        try {
            Jedis jedis = jedisPool.getResource();
            try {
                String key = "seckill:" + seckill.getSeckillId();
                byte[] bytes = ProtostuffIOUtil.toByteArray(seckill, schema,
                        LinkedBuffer.allocate(LinkedBuffer.DEFAULT_BUFFER_SIZE));
                //超时缓存
                int timeout = 60 * 60;//1小时
                String result = jedis.setex(key.getBytes(),timeout,bytes);

                return result; //错误信息 or OK
            }finally {
                jedis.close();
            }
        }catch (Exception e) {

        }

        return null;
    }
}
