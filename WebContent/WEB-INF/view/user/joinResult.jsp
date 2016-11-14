<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h3>회원가입처리결과</h3>
<c:choose>
	<c:when test="${rst }">
		정상처리되었습니다. 잠시 뒤 메인뷰로 이동합니다.
	</c:when>
	<c:otherwise>
		처리중 오류가 발생하였습니다. 
		다시 <a href="/member/join.nhn">가입</a>창으로 이동하시겠습니까? 
	</c:otherwise>
</c:choose>
    