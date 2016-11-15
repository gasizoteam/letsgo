<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h3>후기등록하기</h3>

<b>SAAN</b>
서비스를 이용하여 개인의 자료를 무료로 등록할수있습니다.

	<form action="/write/success" method="post" onsubmit="convert()">

		->메인카테고리#<select name="maincate">
			
			<option value="mountain">산</option>
			<option value="sea">바다</option>
			<option value="valley">계곡</option>
			<option value="camp">캠핑</option>
			<option value="healing">힐링</option>
			<option value="fishing">낚시</option>
			<option value="eat">삼시세끼</option>
			<option value="couple">알콩달콩</option>
			<option value="family">오순도순</option>

		</select> 
		->카테고리 #<select name="subcate">
			<option value="seoul">서울</option>
			<option value="capital">수도권</option>
			<option value="chungnam">충청남도</option>
			<option value="chungbuk">충청북도</option>
			<option value="kangwon">강원도</option>
			<option value="gyeongnam">경상남도</option>
			<option value="gyeongbuk">경상북도</option>
			<option value="jeonnam">전라남도</option>
			<option value="jeonbuk">전라북도</option>
			<option value="jeju">제주도</option>

		</select> <br /> ->제목# <input type="text" name="title" size="77" /> <br />
		->후기#
		<textarea name="memo" id="ta"></textarea>
		<br /> <input type="submit" value="자료등록" />
		<script src="/editor/js/HuskyEZCreator.js"></script>
		<script>
			function convert() {
				oEditors.getById["ta"].exec("UPDATE_CONTENTS_FIELD", []);
			}
			var oEditors = [];

			nhn.husky.EZCreator.createInIFrame({
				oAppRef : oEditors,
				elPlaceHolder : "ta",
				sSkinURI : "/editor/SmartEditor2Skin.html",
				htParams : {
					bUseToolbar : true,
					bUseVerticalResizer : true,

				},
				fCreator : "createSEditor2"
			});
		</script>
	</form>
