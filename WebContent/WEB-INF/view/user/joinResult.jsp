<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h3>ȸ������ó�����</h3>
<c:choose>
	<c:when test="${rst }">
		����ó���Ǿ����ϴ�. ��� �� ���κ�� �̵��մϴ�.
	</c:when>
	<c:otherwise>
		ó���� ������ �߻��Ͽ����ϴ�. 
		�ٽ� <a href="/member/join.nhn">����</a>â���� �̵��Ͻðڽ��ϱ�? 
	</c:otherwise>
</c:choose>
    