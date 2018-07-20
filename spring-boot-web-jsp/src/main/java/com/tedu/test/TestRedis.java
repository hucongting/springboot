package com.tedu.test;

import redis.clients.jedis.*;

public class TestRedis {

    private Jedis jedis; //非切片额客户端连接
    private JedisPool jedisPool; //非切片连接池
    private ShardedJedis shardedJedis; //切片额客户端连接
    private ShardedJedisPool shardedJedisPool; //切片连接池

    public TestRedis() {
        initialPool();
    }

    /**
     * 初始化非切片池
     */
    public void initialPool(){
        JedisPoolConfig config = new JedisPoolConfig();
        config.setMaxTotal(20);
        config.setMaxIdle(5);
        config.setMaxWaitMillis(10001);
        config.setTestOnBorrow(false);

        jedisPool = new JedisPool(config,"127.0.0.1",6379);
    }



    public static void main(String[] args){
        new TestRedis();
    }
}
