<%@ page contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.relationship.model.*"%>

<%
	RelationshipService relationshipSvc = new RelationshipService();
	List<RelationshipVO> list = relationshipSvc.getAll();    
	pageContext.setAttribute("list",list);
%>

<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
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
<table id="table-1">
	<tr><td>
		 <h3>�Ҧ��¦W���� - listAllBlack_List.jsp</h3>
		 <h4><a href="select_page.jsp"><img src="images/pic.jpg" width="100" height="32" border="0">�^����</a></h4>
	</td></tr>
</table>


<c:if test="${not empty errorMsgs}">
	<font style="color:red">�Эץ��H�U���~:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<table>
	<tr>
		<th>��ͪ��A�s��</th>
		<th>�o�X�ܽз|���s��</th>
		<th>���ܷ|���s��</th>
		<th>��ͪ��A</th>
		<th>�ק�</th>
		<th>�R��</th>
		
	</tr>
	<%@ include file="page1.file" %> 
	<c:forEach var="relationshipVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		
		<tr>
			
			<td>${relationshipVO.frdbeinv_memid}</td>
		
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/back-end/Relationship/relationship.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�ק�">
			     <input type="hidden" name="frdrela_uid"  value="${relationshipVO.frdrela_uid}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			
		</tr>
	</c:forEach>
</table>
<%@ include file="page2.file" %>

</body>
</html>