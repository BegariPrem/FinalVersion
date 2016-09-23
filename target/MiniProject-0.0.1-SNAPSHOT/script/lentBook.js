	$(document).ready(function(){
		$('#issueBooksButton').hide();
		$('#returnBooksButton').hide();
		$('#issueBookResult').hide();
		$('#returnBookResult').hide();
		$('#addBookResult').hide();
		$('#addUserResult').hide();
		$('#addBookHref').click(function(){
			$('#issueBookResult').hide();
			$('#returnBookResult').hide();
			$('#addBookResult').hide();
			$('#addUserResult').hide();
			
			
		});
		$('#addUserHref').click(function(){
			$('#issueBookResult').hide();
			$('#returnBookResult').hide();
			$('#addBookResult').hide();
			$('#addUserResult').hide();
			
			
		});
		$('#issueBookHref').click(function(){
			$('#issueBookResult').hide();
			$('#returnBookResult').hide();
			$('#addBookResult').hide();
			$('#addUserResult').hide();
			
			
		});
		$('#returnBookHref').click(function(){
			$('#issueBookResult').hide();
			$('#returnBookResult').hide();
			$('#addBookResult').hide();
			$('#addUserResult').hide();
			
			
		});
			$.ajax(
					{
						type:"GET",
						url:"/MiniProject/rest/books/allCategories",
						contentType:"text/html",
						success:function(data){
							$('#categoryDropDown').html(data);
						}
					});
			
		$('#submitReturn').click(
		function validateReturnForm(){
			 
			var customerId=$('#customerIdReturn').val();
			var bookId=$('#bookIdReturn').val();
			var check=true;
			if(customerId==""||customerId==null)
			{
				$("#customerIdReturnError").removeAttr("hidden");
				$("#customerIdReturn").focus(function(){
					$("#customerIdReturnError").attr("hidden", "hidden");
				});
				check=false;
			}
			if(bookId==""||bookId==null)
			{
				
				$("#bookIdReturnError").removeAttr("hidden");
				$("#bookIdReturn").focus(function(){
					$("#bookIdReturnError").attr("hidden", "hidden");
				});
				check=false;
			}
			if(Math.sign(customerId)==-1)
			{
				
						$("#customerIdReturnError").removeAttr("hidden").text("please enter correct customerId ");
						$("#customerIdReturn").focus(function(){
							$("#customerIdReturnError").attr("hidden", "hidden");
						});
						check=false;
					
				
			}
			if(Math.sign(bookId)==-1)
			{
				
						$("#bookIdReturnError").removeAttr("hidden").text("please enter correct bookId ");
						$("#bookIdReturn").focus(function(){
							$("#bookIdReturnError").attr("hidden", "hidden");
						});
						check=false;
				
			}
			if(Math.sign(bookId)==1 && Math.sign(categoryId)==1)
				{
				check=true;
				}
			if(check==true)
			{
				var data={
						"customerId":customerId,
						"bookId":bookId
				};
			 $.ajax({
					type:"POST",
					url:"/MiniProject/rest/user/rentBook",
					data:JSON.stringify(data),
					contentType:"application/json",
					success:function(data){ 
						$("#customerIdReturn").val("");
						$("#bookIdReturn").val("");
						console.log(data);
						$("#returnBookResult").html(data);
						$("#returnBookResult").show();
					}
					});
			}
			
		});
		
		
		$('#submitIssue').click(
				function (){
		 
					var customerId=$('#customerIdIssue').val();
					var bookId=$('#bookIdIssue').val();
					 
					var check=true;
					if(customerId==""||customerId==null)
					{
						$("#customerIdIssueError").removeAttr("hidden");
						$("#customerIdIssue").focus(function(){
							$("#customerIdIssueError").attr("hidden", "hidden");
						 
						});
						check=false;
					}
					if(bookId==""||bookId==null)
						{

						$("#bookIdIssueError").removeAttr("hidden");
						$("#bookIdIssue").focus(function(){
							$("#bookIdIssueError").attr("hidden", "hidden");
						});
						check=false;
						
						}
					if(Math.sign(customerId)==-1)
					{
								$("#customerIdIssueError").removeAttr("hidden").text("please enter correct customerId ");
								$("#customerIdIssue").focus(function(){
									$("#customerIdIssueError").attr("hidden", "hidden");
								});
								check=false;
							
						
					}
					 if(Math.sign(bookId)==-1)
					{
						
								$("#bookIdIssueError").removeAttr("hidden").text("please enter correct bookId ");
								$("#bookIdIssue").focus(function(){
									$("#bookIdIssueError").attr("hidden", "hidden");
								});
								check=false;
							
						
					}
					if(Math.sign(bookId)==1 && Math.sign(categoryId)==1)
						{
							check=true;
						}
				
					if(check==true)
						{
							var data={
									"customerId":customerId,
									"bookId":bookId
							};
						 $.ajax({
								type:"POST",
								url:"/MiniProject/rest/user/lentBook",
								data:JSON.stringify(data),
								contentType:"application/json",
								success:function(data){ 
									$("#customerIdIssue").val("");
									$("#bookIdIssue").val("");
									$("#issueBookResult").html(data);
									$("#issueBookResult").show();
								}
								});
						}
			});
		
		

		$('#submitAddBook').click(
				function (){
				 
					var categoryId=$('#categoryId').val();
					var bookName=$('#bookName').val();
					var bookAuthor=$('#bookAuthor').val();
					var bookQuantity=$('#bookQuantity').val();
					var bookPrice=$('#bookPrice').val();
					var check=true;
					 
					 var name = /^[a-zA-Z]{4,16}$/;
					 var bookReg=/^[a-zA-Z]{4,20}\d{0,4}$/;
					 
					 if(bookName=="")
					 {
					 $("#bookNameError").removeAttr("hidden");
						$("#bookName").focus(function(){
							$("#bookNameError").attr("hidden", "hidden");
						 
						});
						
						check=false;
					 
					 }
					 if(bookAuthor==""||bookAuthor==null)
					 {
					 $("#bookAuthorError").removeAttr("hidden");
						$("#bookAuthor").focus(function(){
							$("#bookAuthorError").attr("hidden", "hidden");
						});
						check=false;
					 
					 }
					 
					 if(categoryId==""||categoryId==null)
						{
							$("#categoryIdError").removeAttr("hidden");
							$("#categoryId").focus(function(){
								$("#categoryIdError").attr("hidden", "hidden");
							});
							check=false;
						}
					 if(bookQuantity==""||bookQuantity==null)
						{
							$("#bookQuantityError").removeAttr("hidden");
							$("#boookQuantity").focus(function(){
								$("#bookQuantityError").attr("hidden", "hidden");
							});
							check=false;
						}
					 if(bookPrice==""||bookPrice==null)
						{
							$("#bookPriceError").removeAttr("hidden");
							$("#boookPrice").focus(function(){
								$("#bookPriceError").attr("hidden", "hidden");
							});
							check=false;
						}
				
					  if(bookReg.test(bookName))
						 {
						  check=true;
						 }
					  if(name.test(bookAuthor)){
						 check=true;
						 
					 }
					
				
						if(Math.sign(categoryId)==-1)
							{
								$("#categoryIdError").removeAttr("hidden").text("please enter correct customerId ");
								$("#categoryId").focus(function(){
									$("#categoryIdError").attr("hidden", "hidden");
								});
								check=false;
							}
						
					
					 
						if(Math.sign(bookQuantity)==-1)
							{
								$("#bookQuantityError").removeAttr("hidden").text("please enter correct customerId ");
								$("#boookQuantity").focus(function(){
									$("#bookQuantityError").attr("hidden", "hidden");
								});
								check=false;
							}
					
					
						if(Math.sign(bookPrice)==-1)
							{
								$("#bookPriceError").removeAttr("hidden").text("please enter correct customerId ");
								$("#boookPrice").focus(function(){
									$("#bookPriceError").attr("hidden", "hidden");
								});
								check=false;
							}
						
					  
					
					
					
					
					  if(check==true)
						  {
						  		
						  	var dataString = {
						  			"bookName":bookName,
						  			"bookAuthor":bookAuthor,
						  			"bookCategory":categoryId,
						  			"bookAvailability":bookQuantity,
						  			"bookPrice":bookPrice
						  	};
							 
							 $.ajax({
								type:"POST",
								url:"/MiniProject/rest/books/addbooks",
								data:JSON.stringify(dataString),
								contentType:"application/json",
								success:function(data){ 
									console.log("post called");
										$('#bookName').val("");
										$('#bookAuthor').val("");
										$('#categoryId').val("");
										$('#bookQuantity').val("");
										$('#bookPrice').val("");
										$('#addBookResult').html(data);
										$('#addBookResult').show();
										  
								}
								});
						  		
						  		
						  }
				
			});
		
		$('#submitAddUser').click(
				function(){
 					var userEmail =$("#customerEmail").val();
					var userFirstName = $("#customerFirstName").val();
					var  userLastName= $("#customerLastName").val();
					var userMobileNumber=$('#customerMobileNumber').val();
					userMobileNumber=userMobileNumber.replace(/\,/g,''); 
					userMobileNumber=parseInt(userMobileNumber,10);
					 var mobile = /^[0-9]{10}$/;
					 var name = /^[a-zA-Z]{4,16}$/;
					 var mail=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
					 var check=true;
					 if(userFirstName == ""||userFirstName==null){
							$("#firstName").removeAttr("hidden");
							$("#customerFirstName").focus(function(){
								$("#firstName").attr("hidden", "hidden");
							});
							check=false;
						}
					 if(userLastName == ""||userLastName==null){
							$("#lastName").removeAttr("hidden");
							
							$("#customerLastName").focus(function(){
								$("#lastName").attr("hidden", "hidden");
							});
							check=false;
						}
					if(userEmail == ""||userEmail==null){
						$("#customerEmailError").removeAttr("hidden");
						$("#customerEmail").focus(function(){
							$("#customerEmailError").attr("hidden", "hidden");
						});
						check= false;
					}

					
					if(userMobileNumber == ""||userMobileNumber==null){
						$("#mobileNumber").removeAttr("hidden");
						
						$("#customerMobileNumber").focus(function(){
							$("#mobileNumber").attr("hidden", "hidden");
						});
						check=false;
					}
					


					 if(mail.test(userEmail) == false)
					{	//alert(mail.test(email));
				
						$("#customerEmailError").removeAttr("hidden").text("Enter the valid Email ID(Like : name@gmail.com)");
						$("#customerEmail").focus(function(){
							$("#customerEmailError").attr("hidden", "hidden");
						});
						check=false;
					}
					 if(name.test(userFirstName) == false)
					{	//alert(mail.test(email));
						
						$("#firstName").removeAttr("hidden").text("Enter the valid  First Name");
						$("#customerFirstName").focus(function(){
							$("#firstName").attr("hidden", "hidden");
						});
						check=false;
					}
					 if(name.test(userLastName) == false)
					{	//alert(mail.test(email));
						
						$("#lastName").removeAttr("hidden").text("Enter the valid  last Name");
						$("#customerLastName").focus(function(){
							$("#lastName").attr("hidden", "hidden");
						});
						check=false;
					}

					 if(mobile.test(userMobileNumber) == false)
					{
					
						$("#mobileNumber").removeAttr("hidden").text("Enter the valid Phone Number(must have 10 characters)");
						$("#customerMobileNumber").focus(function(){
							$("#mobileNumber").attr("hidden", "hidden");
						});
						check=false;
					}
					if(check==true) {
						
						 var dataString={"firstName":userFirstName,
								 		"lastName":userLastName,
								 		"emailId":userEmail,
								 		"phoneNumber":userMobileNumber
						 
						 			};
						 $.ajax({
							type:"POST",
							url:"/MiniProject/rest/user/register",
							data:JSON.stringify(dataString),
							contentType:"application/json",
							success:function(data){ 
									$('#customerEmail').val("");
									$('#customerFirstName').val("");
									$('#customerLastName').val("");
									$('#customerMobileNumber').val("");
									$('#addUserResult').html(data);
									$('#addUserResult').show();
									    
							}
							});
					}
					
					
				}
		);
		$('#logoutButton').click(function(){
			
			var xhttp = new XMLHttpRequest();
			  xhttp.onreadystatechange = function() {
			    if (xhttp.readyState == 4 && xhttp.status == 200) {
			      window.open("/MiniProject/rest/user/logout","_top");
			    }
			  };
			  xhttp.open("GET", "/MiniProject/rest/user/logout", true);
			  xhttp.send();
			
		});
		
	});

