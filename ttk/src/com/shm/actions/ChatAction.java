package com.shm.actions;

import java.util.ArrayList;
import java.util.List;

import com.shm.beans.User;
import com.shm.utils.SessionAttributeName;
import com.shm.utils.TimeUtil;

public class ChatAction extends InitAction {
	private static final long serialVersionUID = 1L;
	private String uname;
	private String content;
	
	public String login() {
		List<String> userList = new ArrayList<String>();
		Object obj = application.getAttribute(SessionAttributeName.USERLIST);
		if(obj != null) {
			userList = (List<String>) obj;
		}
		User user = (User) session.getAttribute(SessionAttributeName.CURRENTUSER);
		userList.add(user.getCallName());
		application.setAttribute("userList", userList);
		return SUCCESS;
	}
	
	public String exit() {
		User user = (User) session.getAttribute(SessionAttributeName.CURRENTUSER);
		uname = user.getCallName();
		List<String> userList = (List<String>) application.getAttribute(SessionAttributeName.USERLIST);
		userList.remove(uname);
		if(userList.size() == 0) {
			application.setAttribute(SessionAttributeName.WORDS, null);
		}
		return "exit";
	}
	
	public String talk() {
		User user = (User) session.getAttribute("currentUser");
		String time = new TimeUtil().getTime();
		String word = "<a style='font-size:12px;'>"+ user.getCallName() +"&nbsp;说:&nbsp;&nbsp;&nbsp;" + time + 
				"</a><p style='margin:5px 0;padding-left:15px;font-size:14px;'>" + 
				content + "</p>";
		List<String> words = new ArrayList<>();
		Object obj = application.getAttribute(SessionAttributeName.WORDS);
		if(obj != null) {
			words = (List<String>) obj;
		}
		words.add(word);
		application.setAttribute(SessionAttributeName.WORDS, words);
		return SUCCESS;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
}
