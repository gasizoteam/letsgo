<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<section id="contact">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>회원정보를 입력해주세요!!</h2>
				<hr class="star-primary">
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2">
				<form name="sentMessage" id="contactForm" novalidate action="/user/joinConfirm">
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>Email Address</label> <input type="email" name="userid"
								class="form-control" placeholder="Email" id="Email" required
								data-validation-required-message="Please enter your Email.">
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>PassWord</label> <input type="password"
								class="form-control" placeholder="password" id="userpass"
								name="userpass" required
								data-validation-required-message="Please enter your password.">
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>Name</label> <input type="text" class="form-control"
								placeholder="Name" id="Name" name="username" required
								data-validation-required-message="Please enter your phone Name.">
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>Birth</label> <input type="date" class="form-control"
								placeholder="Birth" id="Birth" name="userbirth" required
								data-validation-required-message="Please enter your phone Birth.">
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>Phone Number</label> <input type="text"
								class="form-control" placeholder="Phone Number" id="Number"
								name="userphone" required
								data-validation-required-message="Please enter your phone number.">
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>Gender</label> <input type="radio" class="form-control"
								placeholder="Phone Number" id="phone" name="usergender" required
								value="m" />남 <input type="radio" class="form-control"
								placeholder="Phone Number" id="phone" name="usergender" required
								value="f" />여
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<br>
					<div id="success"></div>
					<div class="row">
						<div class="form-group col-xs-12">
							<button type="submit" class="btn btn-success btn-lg">회원가입</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>









