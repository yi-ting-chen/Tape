<%@ page contentType="text/html; charset=Big5" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.actcol.model.*"%>

<%
	ActColVO actColVO = (ActColVO) request.getAttribute("actColVO"); //ActColServlet.java (Concroller) �s�Jreq��actRnkVO���� (�]�A�������X��actRnkVO, �]�]�A��J��ƿ��~�ɪ�actRnkVO����)
	pageContext.setAttribute("actColVO", actColVO);
%>

--�o�^���o��ColUid�O ${actColVO.coluid}--

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>���òM��ק� - update_actcol_input.jsp</title>

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
	width: 450px;
	background-color: white;
	margin-top: 1px;
	margin-bottom: 1px;
}

table, th, td {
	border: 0px solid #CCCCFF;
}

th, td {
	padding: 1px;
}
</style>

</head>
<body bgcolor='white'>

	<table id="table-1">
		<tr>
			<td>
				<h3>���òM��ק� - update_actcol_input.jsp</h3>
				<h4>
					<a href="select_page.jsp"><img src="images/back1.gif"
						width="100" height="32" border="0">�^����</a>
				</h4>
			</td>
		</tr>
	</table>

	<h3>��ƭק�:</h3>

	<%-- ���~��C --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">�Эץ��H�U���~:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/front_end/actcol/ActColController" name="form1">
		<table>
			<tr>
				<td>APlUID:<font color=red><b>*</b></font></td>
				<td><%=actColVO.getColuid()%></td>
			</tr>

			<tr>
				<td>�|���s��:</td>
				<td><input type="text" name="memid" size="45"
					value="<%=actColVO.getMemid()%>" /></td>
			</tr>

			<tr>
				<td>���ʽs��:</td>
				<td><input type="text" name="actid" size="45"
					value="<%=actColVO.getActid()%>" /></td>
			</tr>


			

		</table>
		<br> <input type="hidden" name="action" value="update"> <input
			type="hidden" name="coluid" value="<%=actColVO.getColuid()%>">
		<input type="submit" value="�e�X�ק�">
	</FORM>


</body>






</html>