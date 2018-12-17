package com.shm.actions;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.shm.beans.Feedback;
import com.shm.biz.IFeedbackBiz;
import com.shm.utils.JsonObject;

@Scope("prototype")
@Controller("feedbackAction")
public class FeedbackAction extends InitAction {

	private static final long serialVersionUID = 1L;
	@Resource(name="iFeedbackBiz")
	private IFeedbackBiz iFeedbackBiz;
	
	private Feedback feedback;
	private JsonObject json;
	
	public String backInit() {
		List<Feedback> list = iFeedbackBiz.getFbList();
		System.out.println(list);
		if(list != null && list.size() > 0) {
			json = new JsonObject();
			json.setRows(list);
		}
		return SUCCESS;
	}
	
	public String addFb() {
		int result = iFeedbackBiz.addOneFb(feedback); 
		json = new JsonObject();
		json.setResult(result);
		return SUCCESS;
	}
	
	public void setJson(JsonObject json) {
		this.json = json;
	}

	public JsonObject getJson() {
		return json;
	}

	public Feedback getFeedback() {
		return feedback;
	}

	public void setFeedback(Feedback feedback) {
		this.feedback = feedback;
	}
}
