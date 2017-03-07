<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
  <title>JSTL fmt:dateNumber Tag</title>
</head>
<body>
<h3>Number Format:</h3>
<!-- 得到当前时间，赋值给now -->
<c:set var="now" value="<%=new java.util.Date()%>" />
<!-- 取到时间 -->
<p>Formatted Date (1): <fmt:formatDate type="time" value="${now}" /></p>
<!-- 取到日期 -->
<p>Formatted Date (2): <fmt:formatDate type="date" value="${now}" /></p>
<!-- 时间和日期都取，按默认格式 -->
<p>Formatted Date (3): <fmt:formatDate type="both" value="${now}" /></p>
<!-- 日期和时间都是短格式的 -->
<p>Formatted Date (4): <fmt:formatDate type="both" dateStyle="short" timeStyle="short" 
            value="${now}" /></p>
<!-- 日期和时间都是中等格式的 -->
<p>Formatted Date (5): <fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" 
            value="${now}" /></p>
<!-- 日期和时间都是长格式的 -->
<p>Formatted Date (6): <fmt:formatDate type="both" dateStyle="long" timeStyle="long" 
            value="${now}" /></p>
<!-- 按照年月日排列 -->
<p>Formatted Date (7): <fmt:formatDate pattern="yyyy-MM-dd" value="${now}" /></p>
</body>
</html>