package com.shm.actions;

import java.io.UnsupportedEncodingException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class InitAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	protected static HttpServletRequest request;
	protected static ServletContext application;
	protected static HttpSession session;
	
	protected InitAction() {
		application = ServletActionContext.getServletContext();
		request = ServletActionContext.getRequest();
		session = request.getSession();
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
}
