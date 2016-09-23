<!DOCTYPE html>
<html>
<head>
<meta name="google-signin-client_id" content="878089752133-mv37j73qssfhtnbl8g9lmi26ljntg3j4.apps.googleusercontent.com">
<title>Sign-Up/Login Form</title>
<link
	href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="/MiniProject/css/normalize.css">


<link rel="stylesheet" href="/MiniProject/css/style.css">
</head>

<body>

	<div class="form">

		<ul class="tab-group">
			<button class="button button-block" style="height:80px;padding-bottom: 9px;padding-top:inherit"><span style="font-size:20px">Welcome To</span> <div style="font-size:26px">Online Book Portal</div></button>
		</ul>

		<div class="tab-content">
			 

			<div id="login">
				 

				<form action="/MiniProject/rest/login" method="post" onsubmit="return validateDetails">

					<div class="field-wrap">
						<label> Email Address<span class="req">*</span>
						</label> <input type="email" id="userEmail" name="userEmail" autocomplete="off"/>
						<span id="userEmailError" style="color: red;" hidden></span>
					</div>

					<div class="field-wrap">
						<label> Password<span class="req" >*</span>
						</label> <input type="password" id="userPassword" name="userPassword" autocomplete="off"/> <span id="userPasswordError"
							style="color: red;" hidden></span>
					</div>
				<div style="width:400px;margin-bottom:100px">
					<span id="googleSignInButton" class="g-signin2" style="float:left;" data-onsuccess="onSignIn"></span>  
					<button type="submit" id="userLoginButton" class="button style="float:right;"><span style="text-align:center">Log In</span></button>
				</div>
				 

				</form>
				<form id="googleForm" action="/MiniProject/rest/user/googleLogin" method="post">
				 	<input id="tokenId" name="tokenId" type="text" hidden>
				 </form>
			</div>

		</div>
		<!-- tab-content -->

	</div>
	<!-- /form -->
		<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="https://apis.google.com/js/platform.js" async defer></script>
		<script src="/MiniProject/script/index.js"></script>
	 	 
	 	
</body>
</html>
