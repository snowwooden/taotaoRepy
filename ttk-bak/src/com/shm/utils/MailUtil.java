package com.shm.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;


@SuppressWarnings("serial")
public class MailUtil extends Properties{
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
	
	public boolean sendMail(String to_email, String title, String code){
		if(to_email.toLowerCase().endsWith("qq.com")){  //说明是QQ
			return sendQQmail(to_email,title,code);
		}else{
			return sendGmail(to_email,title,code);
		}
	}

	/**
	 * 邮件发送
	 * @param from_email：发件人邮箱
	 * @param pwd：发件人邮箱密码
	 * @param to_email：收件人邮箱
	 * @param title：邮件标题
	 * @param msg：邮件内容
	 * @return：成功返回true,失败返回false
	 */
	private boolean sendGmail(String to_email,String title,String msg){
		try {
			// 获取系统当前属性
			Properties props = new Properties();
			props.put("mail.smtp.host","smtp.163.com");  
			props.put("mail.smtp.auth","true");  

			// 通过系统属性创建一个会话类
			Session session = Session.getDefaultInstance(props, null);

			//创建一个message对象，用来创建一封邮箱
			Message message=new MimeMessage(session);

			//设置邮件发送者邮箱地址
			message.setFrom(new InternetAddress("qfxsxhfy@163.com"));

			//设置邮件接收者的邮箱地址,假设只发送给一个人
			InternetAddress[] to=new InternetAddress[1];
			to[0]=new InternetAddress(to_email);

			//设置邮件发送的类型
			message.setRecipients(MimeMessage.RecipientType.TO,to);

			//邮件标题
			message.setSubject(title);
			message.setSentDate(new Date()); //设置时间

			String content="<span style=\"font-size:16px;font-weight:blod;font-family:'微软雅黑'\">尊敬的用户：</span><br /><br />" +
					"<div style='width:800px'>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size:14px;font-family:'微软雅黑'\">" +
					"您好 ! 感谢您注册湖工校园二手交易平台。您本次的验证码为：" + msg + "</span>" +
					"<br/><br /><span style=\"font-size:14px;font-family:'微软雅黑';float:right;\">闲货 - 二手交易平台</span><br/>" +
					"<span style=\"font-size:14px;font-family:'微软雅黑';float:right;padding-right:20px;\">"+sdf.format(new Date())+"</span></div>";

			System.out.println(content);
			Multipart mul=new MimeMultipart();  //新建一个MimeMultipart对象来存放多个BodyPart对象
			BodyPart mdp=new MimeBodyPart();  //新建一个存放信件内容的BodyPart对象
			mdp.setContent(content,"text/html;charset=utf-8");
			mul.addBodyPart(mdp);  //将含有信件内容的BodyPart加入到MimeMultipart对象中
			message.setContent(mul); //把mul作为消息内容

			//创建一个传输对象
			Transport transport=session.getTransport("smtp");

			//建立与服务器的链接
			transport.connect("smtp.163.com","qfxsxhfy@163.com","zhouhaijun12131.");//发送端口25 接收端口110

			//发送邮件
			transport.sendMessage(message,message.getAllRecipients());

			//关闭网邮件传输
			transport.close();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	private boolean sendQQmail(String to_email, String title, String msg){
		try {
			
			Properties props = System.getProperties();
			
			 // 开启debug调试  
            props.setProperty("mail.debug", "true");
            // 发送服务器需要身份验证  
            props.setProperty("mail.smtp.auth", "true");
            // 设置邮件服务器主机名  
        	props.setProperty("mail.smtp.host", "smtp.qq.com");
        	
        	props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            props.setProperty("mail.smtp.socketFactory.fallback", "false");
             
            // 发送邮件协议名称  
            props.setProperty("mail.transport.protocol", "smtp");  
			
            props.setProperty("mail.smtp.port","465");
            
            props.setProperty("mail.smtp.socketFactory.port", "465");
            
			// 通过系统属性创建一个会话类
            Session session = Session.getInstance(props);

			//创建一个message对象，用来创建一封邮箱
			Message message = new MimeMessage(session);

			//设置邮件发送者邮箱地址
			message.setFrom(new InternetAddress("1149246490@qq.com"));

			//设置邮件接收者的邮箱地址,假设只发送给一个人
			InternetAddress[] to = new InternetAddress[1];
			
			to[0] = new InternetAddress(to_email);

			//设置邮件发送的类型
			message.setRecipients(MimeMessage.RecipientType.TO, to);

			//邮件标题
			message.setSubject(title);
			
			//设置时间
			message.setSentDate(new Date()); 

			String content="<span style=\"font-size:16px;font-weight:blod;font-family:'微软雅黑'\">尊敬的用户：</span><br /><br />" +
					"<div style='width:800px'>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size:14px;font-family:'微软雅黑'\">" +
					"您好 ! 感谢您注册湖工校园二手交易平台。您本次的验证码为：" + msg + "</span>" +
					"<br/><br /><span style=\"font-size:14px;font-family:'微软雅黑';float:right;\">闲货 - 二手交易平台</span><br/>" +
					"<span style=\"font-size:14px;font-family:'微软雅黑';float:right;padding-right:20px;\">" + sdf.format(new Date()) + "</span></div>";

			Multipart mul = new MimeMultipart();  //新建一个MimeMultipart对象来存放多个BodyPart对象
			BodyPart mdp = new MimeBodyPart();  //新建一个存放信件内容的BodyPart对象
			mdp.setContent(content, "text/html;charset=utf-8");
			mul.addBodyPart(mdp);  //将含有信件内容的BodyPart加入到MimeMultipart对象中
			message.setContent(mul); //把mul作为消息内容

			//创建一个传输对象
			Transport transport = session.getTransport("smtp");

			//建立与服务器的链接
			transport.connect("smtp.qq.com", 465, "1149246490@qq.com", "eojjkhqlpukfgbjh");//发送端口25 接收端口110

			//发送邮件
			transport.sendMessage(message, message.getAllRecipients());

			//关闭网邮件传输
			transport.close();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}

