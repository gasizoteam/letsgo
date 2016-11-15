<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form action="/user/joinConfirm" >
	<b>* *기본정보 입력* *</b><br />
	 <b>ID</b> <input type="email" required="required" name="userid"/>
	 <br /> 
	<b>PASS</b> <input type="password" required="required" name="userpass" /><br /> 
	<b>NAME</b> <input type="text" required="required" name="username" /><br /> 
	<b>BIRTH</b> <input type="date" required="required" name="userbirth"  /><br /> 
	<b>PHONE</b> <input type="text" required="required" name="userphone" /><br /> 
	<b>GENDER</b> <input type="radio" required="required" name="usergender" value="m"/>남
 	<input type="radio" required="required" name="usergender" value="f"/>여
	<br /> 
	<input type="submit" />
</form>










