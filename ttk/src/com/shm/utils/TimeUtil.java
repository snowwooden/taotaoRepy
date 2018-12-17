package com.shm.utils;

import java.text.SimpleDateFormat;
import java.util.Date;



public class TimeUtil {
	
	public String getTime() {
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		String s1 = LocalDate.now().toString();
//		String s2 = LocalTime.now().toString().substring(0, 8);
		return sf.format(new Date());
	}
}
