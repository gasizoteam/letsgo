<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${sessionScope.userId eq null }">
		<div>
			<fieldset style="width: 500">
				<legend>
					<b>로그인</b>
				</legend>
				<form action="/member/loginAuth.nhn">
					<b>ID</b> &nbsp;
							<span style="font-size: 8pt;"> <input type="checkbox"
								name="save" />아이디저장
							</span>
							<br />
							<input type="email" required="required"
								placeholder="email형식으로 입력" name="id" />
					<br /> <b>PASS</b><br /> <input type="password"
						required="required" name="pass" /><br />
					<hr />
					<input type="submit" value="로그인" />
				</form>
			</fieldset>
			<a href="/member/join.nhn">아직회원이아니십니까?</a>
			<br/>
			<a href="javascript:openfindpass()">비밀번호를 잃어버렸니?</a>
			<script>
				function openfindpass(){
					var url = "/findpass.nhn";					
					window.open(url , "c" , "height=400 width=300");
				}
			</script>
			<br/>
			<a href="javascript:openchat()">채팅방</a>
			<script>
				function openchat() {
					var url = "/chat.nhn"
					window.open(url , "chat" , "height=400,width=300");
				}
			</script>
			
		</div>
	</c:when>
	<c:otherwise>
		<div>
			<fieldset style="width: 500">
				<legend>
					<b>&gt;이용가능서비스&lt;</b>
				</legend>
				<ul>
					<li><a href="">내 정보</a></li>
					<li><a href="/visit/">방명록</a></li>
					<li><a href="/list/view.nhn">데이터 저장 목록(all)</a></li>
					<li><a href="/file/reg.nhn">파일 등록</a></li>
					<li><a href="/member/.nhn">메일인증</a></li>
					<li><a href="/member/loginOut.nhn">로그아웃</a></li>
				</ul>
			</fieldset>
		</div>
	</c:otherwise>
</c:choose>



