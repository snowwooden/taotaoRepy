package com.shm.actions;

import java.util.List;

import javax.annotation.Resource;

//import org.junit.Test;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.shm.beans.User;
import com.shm.biz.IUserBiz;
import com.shm.utils.JsonObject;
import com.shm.utils.MailUtil;
import com.shm.utils.SessionAttributeName;


@Scope("prototype")
@Controller("userAction")
public class UserAction extends InitAction {
	private static final long serialVersionUID = 1L;
	
	@Resource(name="iUserBiz")
	private IUserBiz iUserBiz;
	
	private User user;
	private JsonObject json;
	
	public String login() {
		User u = iUserBiz.getOneUser(user);
		int result = 0;
		String info = "";
		if(u != null) {
			session.setAttribute(SessionAttributeName.CURRENTUSER, u);
			result = 1;
		} else {
			 info = "账号或者密码错误!";
		}
		json = new JsonObject();
		json.setResult(result);
		json.setObj(info);
		return SUCCESS;
	}
	
	public String checkAccount() {
		User u = iUserBiz.getUserByAccount(user.getAccount());
		int result = 0;
		if(u !=  null) {
			result = 1;
		}
		json = new JsonObject();
		json.setResult(result);
		return SUCCESS;
	}
	
	public String sendCode() {
		String code = "";
		for(int i = 0; i < 4; i++) {
			code += (int) Math.floor(Math.random() * 10);
		}
		System.out.println(code);
		int result = 0;
		//发送邮件
//		if(new MailUtil().sendMail(user.getAccount(), "注册验证码", code)) {
//			result = 1;
//		}
		result=1;
		json = new JsonObject();
		json.setResult(result);
		json.setObj(code);
		return SUCCESS;
	}
	
	public String reg() {
		json = new JsonObject();
		json.setResult(iUserBiz.addOneUser(user));
		return SUCCESS;
	}
	
	public String edit() {
		int result = iUserBiz.editOneUser(user);
		if(result > 0) {
			User u = iUserBiz.getUserByAccount(user.getAccount());
			session.setAttribute(SessionAttributeName.CURRENTUSER, u);
		}
		json = new JsonObject();
		json.setResult(result);
		return SUCCESS;
	}
	
	public String userList() {
		List<User> list = iUserBiz.getUserList();
		if(list != null && list.size() > 0) {
			json = new JsonObject();
			json.setRows(list);
		}
		return SUCCESS;
	}
	
	public String exit() {
		session.setAttribute(SessionAttributeName.CURRENTUSER, "");
		return SUCCESS;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public User getUser() {
		return user;
	}

	public JsonObject getJson() {
		return json;
	}

	public void setJson(JsonObject json) {
		this.json = json;
	}
}
