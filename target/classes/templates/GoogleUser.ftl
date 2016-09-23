<html>
	<head>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	 <script src="https://apis.google.com/js/platform.js" async defer></script>
	 <script src="https://apis.google.com/js/api.js"></script>
	<link rel="stylesheet" href="/MiniProject/css/adminHome.css">
	<script src="/MiniProject/script/normalUser.js">	</script>
	</head>
	
	<body>
		<div class="container-fluid">
		<header id="headerDiv">
		<img id="tree" src="/MiniProject/css/tree.jpg" alt="book tree">
		<span id="headerTitle">Online Book Portal</span>
		<div id="headerButtonHome">
		
		<span id="UserLoginName">Hi ${userName?capitalize}!</span>
		<input type="button" id="logoutButton"class="logout btn btn-success" value="LogOut">
		</div>
		
	</header>
		
	</header>
	<div class="row" id="topSearchDivRow">
		<div id="searchNavBar" class="col-md-3">
			<form action=# class="col-md-10"  >
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
    				<label>select a category</label>
    				
    				<span id="categoryDropDown"></span>
					
 			</fieldset>
 			 <button type="button" class="btn btn-success"  id="searchBooksButton"><span class="glyphicon glyphicon-search"></span> Search Books</button>
		</form>
			
			</div>
			
		
		
		<div class="col-md-1"></div>
		<div id="searchBookDisplay" class="col-md-7" style="padding:15px;font-size:14px">
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
		 
	</body>
</html>
