package com.shm.actions;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.shm.beans.Admin;
import com.shm.biz.IAdminBiz;
import com.shm.utils.JsonObject;
import com.shm.utils.SessionAttributeName;

@Scope("prototype")
@Controller("adminAction")
public class AdminAction extends InitAction {
	
	private static final long serialVersionUID = 1L;
	private Admin admin;
	private JsonObject json;
	
	@Resource(name="iAdminBiz")
	private IAdminBiz iAdminBiz;
	
	public String login() {
		Admin ad = iAdminBiz.getAdmin(admin);
		if(ad != null) {
			session.setAttribute(SessionAttributeName.ADMIN, ad);
			json = new JsonObject();
			json.setObj(ad);
		}
		return SUCCESS;
	}
	
	public String exit() {
		session.setAttribute(SessionAttributeName.ADMIN, "");
		json = new JsonObject();
		json.setResult(1);
		return SUCCESS;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public JsonObject getJson() {
		return json;
	}

	public void setJson(JsonObject json) {
		this.json = json;
	}
	
}
