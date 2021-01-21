<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, java.util.Base64"%>
<%@ page import="com.actcol.model.*"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>

<%
	ActColService actColSvc = new ActColService();
	List<ActColVO> list = actColSvc.getAll();
	pageContext.setAttribute("list", list);
%>
<%-- <%=request.getContextPath()%> --%>
<%-- <%= request.getServletPath() %> --%>


<html>
<head>
<title>�Ҧ����òM�� - listAllActsCol.jsp</title>

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

	<h4>�����m�߱ĥ� EL ���g�k����:</h4>
	<table id="table-1">
		<tr>
			<td>
				<h3>�Ҧ����u��� - listAllActRnk.jsp</h3>
				<h4>
					<a href="select_page.jsp"><img src="images/back1.gif"
						width="100" height="32" border="0">�^����</a>
				</h4>
			</td>
		</tr>
	</table>

	<%-- ���~��C --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">�Эץ��H�U���~:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<table>
		<tr>
			<th>ColUID</th>
			<th>�|���s��</th>
			<th>���ʽs��</th>
		</tr>
		<%@ include file="page1.file"%>
		<c:forEach var="actColVO" items="${list}" begin="<%=pageIndex%>"
			end="<%=pageIndex+rowsPerPage-1%>">
			<tr>

				<td>${actColVO.coluid}</td>
				<td>${actColVO.memid}</td>
				<td>${actColVO.actid}</td>
				<td>
					<FORM METHOD="post"
						ACTION="<%=request.getContextPath()%>/front_end/actcol/ActColController"
						style="margin-bottom: 0px;">
						<input type="hidden" name="coluid" value="${actColVO.coluid}">
						<input type="hidden" name="action" value="getOne_For_Update">
						<input type="submit" value="�ק�">
					</FORM>
				</td>
				<td>
					<FORM METHOD="post"
						ACTION="<%=request.getContextPath()%>/front_end/actcol/ActColController"
						style="margin-bottom: 0px;">
						<input type="hidden" name="coluid" value="${actColVO.coluid}">
						<input type="hidden" name="action" value="delete"> <input
							type="submit" value="�R��">
					</FORM>
				</td>
			</tr>
		</c:forEach>
	</table>
	<%@ include file="page2.file"%>

</body>
</html>