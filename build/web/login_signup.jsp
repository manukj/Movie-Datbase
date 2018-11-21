                
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #ffffff;
    color: black;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 20%;
}

button:hover {
    opacity: 0.8;

}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 10%;
    border-radius: 50%;
}
.centeerr{
    display: block;
     margin-left: auto;
    margin-right: auto
}

.container {
    padding: 1px;
}
button.displayed {
    display: block;
    margin-left: auto;
    margin-right: auto }


body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Set a style for all buttons */


button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: #474e5d;
    padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
}
.open {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
}

.close:hover,
.close:focus {
    color: #f44336;
    cursor: pointer;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
</style>
</head>



<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="signup.jsp" name="signup">
    <div class="container">
      <h1>Sign Up</h1>
      <p>Please fill in this form to create an account.</p>
      <hr>
      <label for="user_name"><b>User Name</b></label>
      <input type="text" placeholder="Enter the user Name " name="name" required >
      
      <label for="email" color="#ffffff"><b>Email</b></label>
      <input type="text" placeholder="Enter Email" name="email" required onclick="return(validdataUsername())">

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required onclick="return(validdataEmail())" >

      
      <label for="dob"><b>Date of Birth</b></label>
      <input type="date" name="dob" required onclick="return(validdataPass())">
      
      

      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">Sign Up</button>
      </div>
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

function validdataEmail()
{
    var x = document.forms["signup"]["email"].value;
        var z = document.forms["signup"]["name"].value;
    if(z=="")
    {
        alert("Username cannot be empty");
        return flase;
    }else
     if(x=="")
    {
        alert("Email cannot be empty");
        return flase;
    }
    
}
function validdataUsername()
{
    var x = document.forms["signup"]["name"].value;
    if(x=="")
    {
        alert("Username cannot be empty");
        return flase;
    }
    
}
function validdataPass()
{
    var z = document.forms["signup"]["name"].value;
     var y = document.forms["signup"]["email"].value;
    
    var x = document.forms["signup"]["psw"].value;
    
    if(z=="")
    {
        alert("Username cannot be empty");
        return flase;
    }else
        if(y=="")
    {
        alert("Email cannot be empty");
        return flase;
    }
    elseif(x=="")
    {
        alert("Password cannot be empty");
        return flase;
    }    
}
function validdataLoginUsername()
{
    var x = document.forms["login"]["uname"].value;
    if(x=="")
    {
        alert("Username cannot be empty");
        return flase;
    }
    
}
</script>




<body bgcolor="#000000">
   
  <div class="imgcontainer">
      <form action="Admin_.jsp">
          <input type="image"  class="avatar" style="width:10% ;height :10%" src="img_avatar1.png"/>
   
    </form>
 
        <form action="login_check.jsp" method="post" name="login">
    <center>
  

  <div class="container">
      <label for="user_name" style="color:white;padding-right: 20px"><b>Enter Username</b></label>
    <input style="width:20%" type="text" placeholder="Enter Username" name="uname" required  >

    <p><label for="user_name" style="color:white;padding-right: 20px"><b>Enter Password</b></label>
   <input style="width:20% ; " type="password" placeholder="Enter Password" name="psw" required onclick="return(validdataLoginUsername())">
     <div class="displayed">
     </p>
         <button type="submit"  value="login" name="option">Sign In</button>
    </form>
         
     </div>
   

  </div>
 
    </center>
  </div>
  <center><button  onclick="document.getElementById('id01').style.display='block'" ">Sign Up</button></center>
        
</body>
</html>
