<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 引用c标签库 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 引用fmt标签库 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
  <title>JSTL fmt:formatNumber Tag</title>
</head>
<body>
<h3>Number Format:</h3>
<c:set var="balance" value="120000.2309" />
<!-- 将balance进行格式化，   货币形式 -->
<p>Formatted Number (1): <fmt:formatNumber value="${balance}" 
            type="currency"/></p>
<p>Formatted Number (2): <fmt:formatNumber type="number" 
            maxIntegerDigits="3" value="${balance}" /></p>
 <p>Formatted Number (3): <fmt:formatNumber type="number" 
            maxFractionDigits="3" value="${balance}" /></p>
<p>Formatted Number (4): <fmt:formatNumber type="number" 
            groupingUsed="false" value="${balance}" /></p>
<p>Formatted Number (5): <fmt:formatNumber type="percent" 
            maxIntegerDigits="3" value="${balance}" /></p>
<p>Formatted Number (6): <fmt:formatNumber type="percent" 
            minFractionDigits="10" value="${balance}" /></p>
<p>Formatted Number (7): <fmt:formatNumber type="percent" 
            maxIntegerDigits="3" value="${balance}" /></p>
<p>Formatted Number (8): <fmt:formatNumber type="number" 
            pattern="###.###E0" value="${balance}" /></p>
<p>Currency in USA :
<fmt:setLocale value="en_US"/>
<fmt:formatNumber value="${balance}" type="currency"/></p>
</body>
</html>
 
