<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.black_list.model.*"%>

<%
	Black_ListService black_listSvc = new Black_ListService();
    List<Black_ListVO> list = black_listSvc.getAll();
    pageContext.setAttribute("list",list);
%>

<html>
<head>
<title>�Ҧ��¦W���� - listAllBlack_List.jsp</title>

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
		<th>�¦W��s��</th>
		<th>�|���s��</th>
		<th>�¦W���H</th>
		<th>�ק�</th>
		<th>�R��</th>
		
	</tr>
	<%@ include file="page1.file" %> 
	<c:forEach var="black_listVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		
		<tr>
			<td>${black_listVO.blk_uid}</td>
			<td>${black_listVO.blk_memid}</td>
			<td>${black_listVO.beblk_memid}</td>
		
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/back-end/Black_List/black_list.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�ק�">
			     <input type="hidden" name="blk_uid"  value="${black_listVO.blk_uid}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/back-end/Black_List/black_list.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�R��">
			     <input type="hidden" name="blk_uid"  value="${black_listVO.blk_uid}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="page2.file" %>

</body>
</html>