package com.shm.utils;
import java.io.Serializable;
import java.util.List;

public class JsonObject<T> implements Serializable{
	
	private static final long serialVersionUID = -4779549414143956054L;
	
	private int total;
	private List<T> rows;
	private Object obj;
	private int result;
	
	@Override
	public String toString() {
		return "JsonObject [total=" + total + ", rows=" + rows + ", obj=" + obj + ", result=" + result + "]";
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}

	public Object getObj() {
		return obj;
	}

	public void setObj(Object obj) {
		this.obj = obj;
	}

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	public JsonObject(int total, List<T> rows, Object obj, int result) {
		super();
		this.total = total;
		this.rows = rows;
		this.obj = obj;
		this.result = result;
	}

	public JsonObject() {
		super();
	}
}
