<html>
	<head>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="/MiniProject/changePassword/css/style.css">
	<link rel="stylesheet" href="/MiniProject/css/returnBook.css">
	    
	<script src="/MiniProject/script/userHome.js">	</script>
	<script src="/MiniProject/changePassword/js/index.js"></script>
	</head>
	
	<body>
		<div class="container-fluid">
		<header id="headerDiv">
		<img id="tree" src="/MiniProject/css/tree.jpg" alt="book tree">
		<span id="headerTitle">Online Book Portal</span>
		<div id="headerButtonHome">
		
		<span id="UserLoginName">Hi ${userName?capitalize} !</span>
		<input type="button" id="changePasswordButton"class="changePassword btn btn-success" value="Change Password">
		<input type="button" id="logoutButton"class="logout btn btn-success" value="Logout">
		</div>
		
	</header>
		 
	<div class="row" id="changePassword" style="margin-top:110px;">
		<div class="col-md-4">
		</div>
		<div id="changePasswordDiv"class="col-md-3" style="background:rgba(242,242,242,0.6);border-radius:5px">
				<br>
				<form role="form" method="post">
    <div class="form-group">
      <label for="password">New Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter Password">
      <p id="passwordError" style="color:red;" hidden>Please fill password field!</p>
    </div>
    <div class="form-group">
      <label for="confirmPassword"> Confirm Password:</label>
      <input type="password" class="form-control" id="confirmPassword" placeholder="Enter Confirm Password">
      <p id="confirmPasswordError" style="color:red;" hidden>Please fill confirm Password field!</p>
    </div>
    
    <button type="button" id="changeButton" class="btn btn-success">Submit</button>
    <p id="changePasswordResult"></p>
  </form>
				<br>
				
		</div>
		<div class="col-md-3">
		</div>
		<div   class="col-md-1">
		</div>
	</div>
	<div id="total">
	<div class="row" id="topSearchDivRow">
 
		<div id="searchNavBar" class="col-md-3">
			<form action=# class="col-md-10">
		<legend>Search Books</legend>
			  <fieldset class="form-group">
    				<label for="bookName">Book Name</label>
    				<input type="text" class="form-control" id="bookName" name="bookName"  placeholder="Enter Book Name"  >
				<p id="booKNameError" style="color:red;" hidden>Please fill Book Name field!</p>
 			</fieldset>
			<fieldset class="form-group">
    				<label for="bookAuthor">Book Author</label>
    				<input type="text" class="form-control" id="bookAuthor" name="bookAuthor"  placeholder="Enter Author"  >
				<p id="bookAuthorError" style="color:red;" hidden>Please fill Book Author field!</p>
 			</fieldset>
 			<fieldset class="form-group">
    				<label>Select a Category</label>
    				
    				<span id="categoryDropDown"></span>
					
 			</fieldset>
 			 <button type="button" class="btn btn-success"  id="searchBooksButton"><span class="glyphicon glyphicon-search"></span> Search Books</button>
		</form>
			
			</div>
			
		
		
		<div class="col-md-1"></div>
		<div id="searchBookDisplay" class="col-md-7" style="padding-left:37px;font-size:14px">
			<p style="text-align:center"> <b>Famous Quotes From Books</b></p>
			 
			<ul>
			 <br>  <li><i> <q>It's the possibility of having a dream come true that makes life interesting</q>
   -Paulo Coelho <b>The Alchemist</b><br></li>
  <br>  <li><q> How wonderful it is that nobody need wait a single moment before starting to improve the world</q>. -Anne Frank <b><i>The Diary of a Young Girl</i></b>
	<br>
	<br>  <li><q>I took a deep breath and listened to the old brag of my heart: I am, I am, I am.</q>
 -Sylvia Plath,<b>  The Bell Jar </b></li>
 <br>	
   <li><q>You call yourself a free spirit, a 'wild thing,' and you're terrified somebody's gonna stick you in a cage. Well baby, you're already in that cage. You built it yourself. And it's not bounded in the west by Tulip, Texas, or in the east by Somali-land. It's wherever you go. Because no matter where you run, you just end up running into yourself</q>
 -Truman Capote <b> Breakfast at Tiffany's </b></li>
<br>
 <li><q>You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. You're on your own. And you know what you know. And YOU are the one who'll decide where to go...</q>
 -Dr. Seuss <b> The Places You'll Go! </b></li>
 <br>
  <li><q>We have all got both light and dark inside us. What matters is the part we choose to act on. That is who we really are.</q>
-J. K. Rowling <b> Harry Potter and the Order of the Phoenix </b></li>
</i>
</ul>
</div>
</div>
<div class="row"><div class="col-md-3"></div><div class="col-md-1"></div><div id="searchDisplayButtonsDiv"class="col-md-7"><ul class="pagination" id="searchDisplayButtons"></ul></div><div class="col-md-1"></div></div>
		<div class="row">
			<div id="adminCustomerLentDetails" class="col-md-3">
			
			<form class="col-md-10">
			<legend>Know Lent Books</legend>
			  <fieldset class="form-group">
    				 
    				 
				<button id="customerId" value=${customerId} hidden></button>
 			</fieldset>
				<input type="button" id="lentCustomerId" class="btn btn-success" value="Know Lent Books">
				</form>
			</div>
		<div class="col-md-1"></div>
			<div id="adminCustomerLentResult" class="col-md-7" style="padding-left:37px;font-size:14px">
					<p style="text-align:center"> <b>Famous Quotes From Books</b></p><br><ul><i> <li><q>Get busy living or get busy dying.</q>
-Stephen King <b>The Shawshank Redemption</b></li>
<br>
  <li><q>All that is gold does not glitter,
Not all those who wander are lost;
The old that is strong does not wither,
Deep roots are not reached by the frost.</q>
-J. R. R. Tolkien <b>The Fellowship of the Ring</b></li>
<br>
  <li><q> My advice is, never do tomorrow what you can do today. Procrastination is the thief of time.</q> -Charles Dickens <b>David Copperfield</b></li>
<br>
  <li><q> And now that you don<q></q>t have to be perfect, you can be good.</q> -John Steinbeck  <b>East of Eden</b></li>
 
<br> <li><q> There are darknesses in life and there are lights, and you are one of the lights, the light of all lights.</q>
-Bram Stroker <b>Dracula</b></li>
</i>
			</ul></div>
			</div>	
			<div class="row"><div class="col-md-3"></div><div class="col-md-1"></div><div id="searchCustomerButtonsDiv"class="col-md-7"><ul class="pagination" id="searchCustomerButtons"></ul></div><div class="col-md-1"></div></div>
		</div>
		 </div>
	</body>
</html>
