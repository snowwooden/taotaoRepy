<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 

<div class="chat_body_left_head">
	<p>用户列表
		<span style="font-size:12px;color:gray;">(当前在线人数：${fn:length(applicationScope.userList)})</span>
	</p>
	
</div>

<ul id="userList">
	<c:forEach items="${applicationScope.userList}" var="user">
		<c:choose>
			<c:when test="${user ==  sessionScope.currentUser.callName}">
				<li>我(${user})</li>
			</c:when>
			<c:otherwise>
				<li>${user}</li>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</ul>

