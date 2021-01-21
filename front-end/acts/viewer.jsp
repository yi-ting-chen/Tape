<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>

<!-- �ۤ��˵��� CSS -->
<link rel="stylesheet" href="<%= request.getContextPath()%>/front_end/css/viewer/viewer.min.css">
<!-- �ۤ��˵��� CSS -->


</head>
<body>
	<ul id="viewer">
    <li><img src="<%= request.getContextPath()%>/front_end/acts/img/tibet-1.jpg" alt="�Ϥ�1"></li>
    <li><img src="<%= request.getContextPath()%>/front_end/acts/img/tibet-2.jpg" alt="�Ϥ�2"></li>
    <li><img src="<%= request.getContextPath()%>/front_end/acts/img/tibet-3.jpg" alt="�Ϥ�3"></li>
    <li><img src="<%= request.getContextPath()%>/front_end/acts/img/tibet-4.jpg" alt="�Ϥ�4"></li>
    <li><img src="<%= request.getContextPath()%>/front_end/acts/img/tibet-5.jpg" alt="�Ϥ�5"></li>
    <li><img src="<%= request.getContextPath()%>/front_end/acts/img/tibet-6.jpg" alt="�Ϥ�6"></li>
</ul>


	<script src="<%= request.getContextPath()%>/front_end/js/jquery.min.js"></script>
	<script src="<%= request.getContextPath()%>/front_end/js/viewer.min.js"></script>
	<script src="<%= request.getContextPath()%>/front_end/js/viewer-jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
</body>
	<script>
		$('#viewer').viewer();
	</script>
</html>