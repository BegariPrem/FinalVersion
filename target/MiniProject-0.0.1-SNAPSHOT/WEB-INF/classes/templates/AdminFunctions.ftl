<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	 <link rel="stylesheet" href="/MiniProject/css/lentBook.css">
	 <script src="/MiniProject/script/lentBook.js"></script>
	
</head>
<body>
 
<div>
<nav class="navbar navbar-default" id="navHomeBar" style="background:#4f99cb; height:100px;color:white">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
     <a class="navbar-brand"><img src="/MiniProject/css/tree.jpg" ></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="#"><p style="margin-top:30px;font-size:60px;color:white"> Online Book Portal</p><span class="sr-only">(current)</span></a></li>
         
         
      </ul>
       
      <ul class="nav navbar-nav navbar-right">
       
        <li><a href="#"><span id=UserLoginName style="color:white;font-size:15px">Hi ${userName?capitalize}!</span></a></li>
        <span hidden>${customerId}</span>
		<span hidden>${userRole}</span>
		
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" style="background:#4f99cb"data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><font color="white">More</font> <span class="caret"></span></a>
          <ul class="dropdown-menu" style="color:white">
          <li role="presentation"><a href="/MiniProject/rest/home">Home</a></li>
    
            <li role="presentation" class="active"><a href="#home"  id="returnBookHref"data-toggle="tab">Return Book</a></li>
    <li role="presentation"><a href="#profile"  id="issueBookHref" data-toggle="tab">Issue Book</a></li>
    <li role="presentation"><a href="#messages"   id="addBookHref" data-toggle="tab">Add Book</a></li>
    <li role="presentation"><a href="#settings"  id="addUserHref"data-toggle="tab">Add User</a></li>
    <li role="presentation"><a href="/MiniProject/rest/user/logout">Logout</a></li>
          </ul>
        </li>
        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>


<div class="container-fluid">
<div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">
    <div class="row" style="margin-top:120px">
    <div class="col-md-3"></div>
    <div class="col-md-5 returnBookDisplay">
    <form   class="col-md-10"   method="post">
		<legend>Return A Book</legend>
			  <fieldset class="form-group">
    				<label for="customerIdReturn">Customer ID</label>
    				<input type="number" class="form-control" id="customerIdReturn" name="customerId"  placeholder="Enter Customer ID" required>
				<p id="customerIdReturnError" style="color:red;" hidden>Please fill customerId field!</p>
 			</fieldset>
			<fieldset class="form-group">
    				<label for="bookIdReturn">Book ID</label>
    				<input type="number" class="form-control" id="bookIdReturn" name="bookId"  placeholder="Enter Book Id" required>
				<p id="bookIdReturnError" style="color:red;" hidden>Please fill bookId field!</p>
 			</fieldset>
 			 <button type="button" class="btn btn-success"  id="submitReturn">Submit</button>
 			 <p id="returnBookResult">added</p>
		</form>
    </div>
    <div class="col-md-4"></div>
    
    </div>
    
    
    </div>
    <div role="tabpanel" class="tab-pane" id="profile">
    
    <div class="row" style="margin-top:120px">
    <div class="col-md-3"></div>
    <div class="col-md-5 issueBookDisplay">
    
			<form  class="col-md-10">
		<legend>Issue A Book</legend>
			  <fieldset class="form-group">
    				<label for="customerIdIssue">Customer ID</label>
    				<input type="number" class="form-control" id="customerIdIssue" name="customerId" placeholder="Enter Customer ID" required>
				<p id="customerIdIssueError" style="color:red;" hidden>Please fill customerId field!</p>
 			</fieldset>
			<fieldset class="form-group">
    				<label for="bookIdIssue">Book ID</label>
    				<input type="number" class="form-control" id="bookIdIssue"name="bookId"  placeholder="Enter Book Id" required>
				<p id="bookIdIssueError" style="color:red;" hidden>Please fill bookId field!</p>
 			</fieldset>
  			 <button type="button" class="btn btn-success"  id="submitIssue">Submit</button>
 			<p id="issueBookResult">added</p>
		</form>
    </div>
    <div class="col-md-4"></div>
    
    </div>
    
    
    </div>
    <div role="tabpanel" class="tab-pane" id="messages">
    
    
    <div class="row" style="margin-top:120px">
    <div class="col-md-3"></div>
    <div class="col-md-5 addBookDisplay" >
    
			 <form  class="col-md-10">
				<legend>Add a Book</legend>
			<fieldset class="form-group">
    				<label for="bookName">Book Name</label>
    				<input type="text" class="form-control" id="bookName" name="bookName" placeholder="Enter Book Name" required>
				<p id="bookNameError" style="color:red;" hidden>Please fill Book Name!</p>
 			</fieldset>
  			<fieldset class="form-group">
    				<label for="bookAuthor">Book Author</label>
    				<input type="text" class="form-control" id="bookAuthor" name="bookAuthor" placeholder="Enter Book Author" required>
				<p id="bookAuthorError" style="color:red;" hidden>Please fill book Author field!</p>
 			</fieldset>
 			<fieldset class="form-group">
    				<label for="categoryId">Select A  Category</label>
    				 <div id="categoryDropDown"></div>
 			</fieldset>
			<fieldset class="form-group">
    				<label for="bookQuantity">Book Quantity</label>
    				<input type="number" class="form-control" id="bookQuantity" name="bookQuantity" placeholder="Enter Book Quantity" required>
				<p id="bookQuantityError" style="color:red;" hidden>Please fill quantity field!</p>
  			</fieldset>
			<fieldset class="form-group">
    				<label for="bookPrice">Book Price</label>
    				<input type="number" class="form-control" id="bookPrice" name="bookPrice" placeholder="Enter Book Price" required>
				<p id="bookPriceError" style="color:red;" hidden>Please fill Price field!</p>
  			</fieldset>
			 <button type="button" class="btn btn-success"  id="submitAddBook">Submit</button>
			 <button type="reset" class="btn btn-success" style="margin:0px 5px">Reset</button>
			 <p id="addBookResult">added</p>
		</form>
    </div>
    <div class="col-md-4"></div>
    
    </div>
    
    
    </div>
    <div role="tabpanel" class="tab-pane" id="settings">
    
    	 <div class="row" style="margin-top:120px">
    <div class="col-md-3"></div>
    <div class="col-md-5 addUserDisplay" >
    
			<form  class="col-md-10" id="customerRegistrationForm" method="post">
				<legend>Register a Customer</legend>
			  <fieldset class="form-group">
    				<label for="customerFirstName">First Name</label>
    				<input type="text" class="form-control" id="customerFirstName" name="newFirstName" placeholder="Enter First Name"  >
				<p id="firstName" style="color:red;" hidden>Please fill firstName field!</p>
 			</fieldset>
			<fieldset class="form-group">
    				<label for="customerLastName">Last Name</label>
    				<input type="text" class="form-control" id="customerLastName" name="newLastName" placeholder="Enter Last Name"  >
				<p id="lastName" style="color:red;" hidden>Please fill lastName field!</p>
 			</fieldset>
  			<fieldset class="form-group">
    				<label for="customerEmail">Email Address</label>
    				<input type="email" class="form-control" id="customerEmail" name="newEmail" placeholder="Enter Email"  >
				<p id="customerEmailError" style="color:red;" hidden>Please fill email field!</p>
 			</fieldset>
			<fieldset class="form-group">
    				<label for="customerMobileNumber">Mobile Number</label>
    				<input type=number class="form-control" id="customerMobileNumber" name="newPhoneNumber" placeholder="Enter Mobile Number"  >
				<p id="mobileNumber" style="color:red;" hidden>Please fill mobile number field!</p>
 			</fieldset>
			 <button type="button" class="btn btn-success"  id="submitAddUser">Submit</button>
			 <button type="reset" class="btn btn-success" style="margin:0px 5px">Reset</button>
			 <p id="addUserResult"> </p>
		</form>
    </div>
    <div class="col-md-4"></div>
    
    </div>
    
    
    </div>
  </div>
  </div>
  </div>
 
</body>
</html>