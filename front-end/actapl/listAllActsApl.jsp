<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, java.util.Base64"%>
<%@ page import="com.actapl.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
	ActAplService actAplSvc = new ActAplService();
	List<ActAplVO> list = actAplSvc.getAll();
	pageContext.setAttribute("list", list);
%>
<%-- <%=request.getContextPath()%> --%>
<%-- <%= request.getServletPath() %> --%>


<html>
<head>
<title>所有報名清單 - listAllActsApl.jsp</title>

<style>
table#table-1 {
	background-color: #CCCCFF;
	border: 2px solid black;
	text-align: center;
}

table#table-1 h4 {
	color: red;
	display: block;
	margin-bottom: 1px;
}

h4 {
	color: blue;
	display: inline;
}
</style>

<style>
table {
	width: 800px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
}

table, th, td {
	border: 1px solid #CCCCFF;
}

th, td {
	padding: 5px;
	text-align: center;
}
</style>

</head>
<body bgcolor='white'>

	<h4>此頁練習採用 EL 的寫法取值:</h4>
	<table id="table-1">
		<tr>
			<td>
				<h3>所有報名資料 - listAllActsApl.jsp</h3>
				<h4>
					<a href="select_page.jsp"><img src="images/back1.gif"
						width="100" height="32" border="0">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>

	<%-- 錯誤表列 --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">請修正以下錯誤:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<table>
		<tr>
			<th>AplUID</th>
			<th>會員編號</th>
			<th>活動編號</th>
			<th>報名理由</th>
			<th>報名狀態(同意、不同意、下架)</th>
		</tr>
		<%@ include file="page1.file"%>
		<c:forEach var="actAplVO" items="${list}" begin="<%=pageIndex%>"
			end="<%=pageIndex+rowsPerPage-1%>">
			<tr>

				<td>${actAplVO.apluid}</td>
				<td>${actAplVO.memid}</td>
				<td>${actAplVO.actid}</td>
				<td>${actAplVO.rson}</td>
				<td>${actAplVO.sts}</td>
				<td>
					<FORM METHOD="post"
						ACTION="<%=request.getContextPath()%>/front_end/actapl/ActAplController"
						style="margin-bottom: 0px;">
						<input type="hidden" name="apluid" value="${actAplVO.apluid}">
						<input type="hidden" name="action" value="getOne_For_Update">
						<input type="submit" value="修改">
					</FORM>
				</td>
				<td>
					<FORM METHOD="post"
						ACTION="<%=request.getContextPath()%>/front_end/actapl/ActAplController"
						style="margin-bottom: 0px;">
						<input type="hidden" name="apluid" value="${actAplVO.apluid}">
						<input type="hidden" name="action" value="delete"> <input
							type="submit" value="刪除">
					</FORM>
				</td>
			</tr>
		</c:forEach>
	</table>
	<%@ include file="page2.file"%>

</body>
</html>