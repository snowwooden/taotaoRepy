package com.taotao.content.testforjdis;

import org.junit.Test;

import redis.clients.jedis.Jedis;

public class JedisTest {
	@Test
	public void jedisTest() throws Exception{
	  Jedis jedis = new Jedis("192.168.25.128", 6379);
	  jedis.set("met", "12454");
	  String string =jedis.get("met");
	  System.out.println(string);
	  jedis.close();
	  
	}

	  

}
