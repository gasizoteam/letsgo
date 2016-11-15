<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<section id="contact">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Áü Ã¬±â±â</h2>
				<hr class="star-primary">
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2">
				<form name="sentMessage" id="contactForm" action="/user/login" novalidate>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>Email Address</label> <input type="email"
								class="form-control" placeholder="Email Address" id="userid" name="userid"
								required
								data-validation-required-message="Please enter your email address.">
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>PassWord</label> <input type="password"
								class="form-control" placeholder="password" id="userpass" name="userpass"
								required
								data-validation-required-message="Please enter your password.">
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="form-group col-xs-12">
							<button type="submit" class="btn btn-success btn-lg">Login</button>
						</div>
						<div class="form-group col-xs-12">
							<a href="/user/join" class="btn btn-success btn-lg">È¸¿ø °¡ÀÔ</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>