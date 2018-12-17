<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="now" class="java.util.Date" scope="page"/>

<div id="parent">
	<div id="message_win_show">
		<fmt:formatDate var="ct" value="${now }" type="both" dateStyle="long" pattern="yyyy-MM-dd HH:mm:ss"/>
		<p style="text-align:center;"><c:out value="${ct }"/></p>
		<ul>
			<c:forEach items="${applicationScope.words}" var="word">
				<li>${word}</li>
			</c:forEach>
		</ul>
	</div>
</div>

