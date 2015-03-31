<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
    <link href="../bootstrap/css/bootstrap-responsive.css" rel="stylesheet" media="screen">
   	
   	
   	<!--Modifications to Some Class--><!--Insert After Main CSS-->
   	<link href="../css/basic.css" rel="stylesheet" media="screen">
   	<link rel="shortcut icon" href="../favicon.ico">
  </head>
  <body>
   <jsp:include page="../header.html"/>
   <section>
		<div class="container">

			<div class="row-fluid">
		<s:if test="#session.user != 'emp'">
         <%  response.sendRedirect("login.jsp"); %>
        </s:if>
		<s:set var="user" value="#session.user.toString()" />
		<s:set var="user0" value="#session.user0.toString()" />
		<s:set var="user1" value="#session.user1.toString()" />
		<s:set var="user2" value="#session.user2.toString()" />
			
	 	<ul class="nav nav-pills pull-right">
  <li class="active">
    <s:url id="logout" action="logout" /><s:a href="%{logout}">Logout</s:a>
  </li>
  
</ul>
     <ul class="nav nav-pills pull-right">
  <li class="active">
    <a href="welcome.jsp">Home</a>
  </li>
  
</ul>

<div class="container" style="margin-top: 50px;">
		<div class="span1"></div>
		<div class="span10">
	
	
		
<div class="alert alert-error">
  <b>Do not Click on any External Links Or your session will be expired
  </b>
</div>
<div class="alert alert-info">
  <b>After adding New Username/Password, Employee need to Deposit Amount in Client Account   
  </b>
</div>
	
<div class="alert alert-success">
 Your Unique Employee Bank ID is: <b><s:property value="user1" /> </b>
</div>
</div>
<div class="span1"></div>
</div>
<h4>Welcome,<s:property value="user0" /> ...!</h4>

<div class="container" style="margin-top: 50px;">
<div class="container">
				<div class="span2"></div>
				<div class="span8">
	
					
					
					<div class="alert alert-info">
					<b>Great!!</b> Client Details Added Successfully
					</div>
					</div>
					<div class="span2"></div>
					</div>
<div class="span1"></div>
<div class="span10">

<div class="well">
<form class="form-horizontal" action="addClients" method="post"> 
<fieldset>

<!-- Form Name -->
<h4>New Client Username Password Details</h4>
<p>&nbsp;</p>

<!-- Text input-->
<div class="control-group">
  <label class="control-label">Username</label>
  <div class="controls">
    <input id="textinput" name="adds.userName" type="text" placeholder="Client New Username" class="input-xlarge">
    <p class="help-block"></p>
  </div>
</div>

<!-- Password input-->
<div class="control-group">
  <label class="control-label">Password</label>
  <div class="controls">
    <input id="passwordinput" name="adds.password" type="password" placeholder="Client New Password" class="input-xlarge">
    <p class="help-block"></p>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label">Bank_Client_ID</label>
  <div class="controls">
    <input id="textinput" name="adds.bank_id" type="text" placeholder="Unique Bank Account Number" class="input-xlarge">
    <p class="help-block"></p>
  </div>
</div>

<!-- Button -->
<div class="control-group">
  <label class="control-label"></label>
  <div class="controls">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Submit</button>
  </div>
</div>

</fieldset>
</form>

</div>
</div>
<div class="span1"></div>
</div>



			</div>



			<jsp:include page="../footer.html"/>
		</div>
	</section>
   
   
   
   
   
   
    
    
    
    <script src="../bootstrap/js/jquery.js"></script>
    <script src="../bootstrap/js/bootstrap.js"></script>
    
  </body>
</html>