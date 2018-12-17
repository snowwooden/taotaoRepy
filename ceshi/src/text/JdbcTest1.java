package text;

import java.sql.SQLException;
import java.util.Properties;
 
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Driver;
 
public class JdbcTest1 {
 
	/**
	 * @throws SQLException 
	 * JDBC测试类
	 * Driver 是一个接口：数据库厂商必须实现的接口，能从其中获取数据库连接
	 * 1.首先加入mysql驱动，即mysql的jar包
	 * 1）.打开eclipse.。
	 * 2）.在工程当前目录下新建lib包，把jar包复制粘贴到这个目录下。
	 * 3）.把jar包右键Bulid path,add to bulid path添加到类路径下
	 * @param args
	 * @throws SQLException
	 */
public static void main(String[] args) throws SQLException {
	//1.创建一个Driver实现类的对象
	Driver driver =new Driver();
	//2.准备连接数据库的基本信息
	String url="jdbc:mysql://localhost:3306/mymarket";
	Properties info =new Properties();
	info.put("user", "root");
	info.put("password", "666666");
	//3.调用Driver接口的connect(url,info)获取数据库连接。
	Connection conn = (Connection) driver.connect(url, info);
	System.out.println(conn);
	
}
}