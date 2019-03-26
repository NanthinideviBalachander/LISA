<%-- 
    Document   : Home
    Created on : 22 Feb, 2019, 6:38:12 PM
    Author     : Nanthinidevi
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="Font-Awesome-4.7/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/templatemo-style.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
          <meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<style>body{padding-top: 60px;}</style>
	
    <link href="bootstrap3/css/bootstrap.css" rel="stylesheet" />
 
	<link href="login-register.css" rel="stylesheet" />
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
	
	<script src="jquery/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="bootstrap3/js/bootstrap.js" type="text/javascript"></script>
	<script src="login-register.js" type="text/javascript"></script>
  <style>
/*  .modal-header, h4, .close {
    background-color: #5cb85c;
    color:white !important;
    text-align: center;
    font-size: 30px;
  }
  .modal-footer {
    background-color: #f9f9f9;
  }*/
  
  body{
     overflow-x: hidden;
  }
  </style>
    
    <title>LISA</title>

   <script type="text/javascript">
     function check()
     {
         var pass=document.getElementById("pass").value;
         var cpass=document.getElementById("passw").value;
         
         
         if(pass===cpass)
         {
            
         }
         else
         {
              alert("password dose not matched");
         }
     }
     
    </script>
    



</head>

<body>
    
    <div class="container">
        <section class="col-md-12 content" id="home">
           <div class="col-lg-6 col-md-6 content-item tm-black-translucent-bg tm-logo-box">
                        <img src="images/logo.png" alt="" style=" position: relative; top:-100px"  >  
              <!--<h1 class="text-uppercase">LISA</h1><br><br>-->
              
              <video id="preview" width="350" hight="500"></video>
    <script type="text/javascript">
      let scanner = new Instascan.Scanner({ video: document.getElementById('preview') });
      scanner.addListener('scan', function (content) {
        alert(content);
        console.log(content);
        
        
        const Url='http://localhost:3000/ComputerCall';
        
        var Data = {
    "phoneNumber":"content"
  }
  const params={
    headers:{
      "Content-Type":"application/json"
    },
    body:JSON.stringify(Data),
    method:"POST"
    //  mode:"no-cors"
  }
  fetch(Url,params)
  .then(data=>{return data.json()})
  .then(res=>{
    fun(res)
    console.log(res)})
  .catch(error=>console.log(error))


      });
      Instascan.Camera.getCameras().then(function (cameras) {
        if (cameras.length > 0) {
          scanner.start(cameras[0]);
        } else {
          console.error('No cameras found.');
        }
      }).catch(function (e) {
        console.error(e);
      });
    </script>
    
               
              
           </div>
           <div class="col-lg-6 col-md-6 content-item content-item-1 background tm-white-translucent-bg">
               <h2 class="main-title text-center dark-blue-text">Welcome</h2>
             <br /><br />
              <div class="container">
 
  <a id="btnlog" href="#" class="btn btn-outline-primary btn-lg" role="button"  data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();" >Login</a>

	 <div class="modal fade login" id="loginModal" >
		      <div class="modal-dialog login animated" >
                          <div class="modal-content"  >
    		         <div class="modal-header">
                       
                        <h3 class="modal-title" style="text-align:" >Login</h3>
                         <button type="button" class="close" data-dismiss="modal" aria-hidden="true" >&times;</button>
                    </div>
                    <div class="modal-body">  
                        <div class="box">
                             <div class="content">
                                <div class="social">
<!--                                    <a class="circle github" href="/auth/github">
                                        <i class="fa fa-github fa-fw"></i>
                                    </a>-->
                                    <a id="google_login" class="circle google" href="/auth/google_oauth2">
                                        <i class="fa fa-google-plus fa-fw"></i>
                                    </a>
                                    <a id="facebook_login" class="circle facebook" href="/auth/facebook">
                                        <i class="fa fa-facebook fa-fw"></i>
                                    </a>
                                </div>
                                <div class="division">
                                    <div class="line l"></div>
                                      <span>or</span>
                                    <div class="line r"></div>
                                </div>
                                <div class="error"></div>
                                <div class="form loginBox">
                                    <!--login begin-->
                                    <form method="get" action="log" accept-charset="UTF-8">
                                    <input id="email" class="form-control" type="text" placeholder="Email" name="email">
                                    <input id="password" class="form-control" type="password" placeholder="Password" name="pass">
                                    <input class="btn btn-default btn-login" type="submit" value="Login">
                                    </form>
                                     <!--login end-->
                                </div>
                             </div>
                        </div>
                        <div class="box">
                            <div class="content registerBox" style="display:none;">
                             <div class="form">
                                  <!--Register begin-->
                                <form method="post" html="{:multipart=>true}" data-remote="true" action="Signup.jsp" accept-charset="UTF-8">
                                  <input id="na" class="form-control" type="text" placeholder="Name" name="name">
                                <input id="ema" class="form-control" type="text" placeholder="Email" name="email">
                                <input id="pass" class="form-control" type="password" placeholder="Password" name="pass">
                                <input id="passw" class="form-control" type="password" placeholder="Repeat Password" name="cpass" onblur="check()">
                                <input class="btn btn-default btn-register" type="submit" value="Create account" name="commit" >
                                </form>
                                   <!--Register end-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="forgot login-footer">
                            <span>Looking to 
                                 <a href="javascript: showRegisterForm();">create an account</a>
                            ?</span>
                        </div>
                        <div class="forgot register-footer" style="display:none">
                             <span>Already have an account?</span>
                             <a href="javascript: showLoginForm();">Login</a>
                        </div>
                    </div>        
    		      </div>
		      </div>
		  </div>
<!--    </div>    -->
              
              
              
              
              
              
        


              
              
              
              
              
              
<h1 id="or" class="main-title text-center dark-blue-text" style="position: absolute;left: 230px;top:270px;">---or---</h1>
              
               <a id="btnsin" href="#" class="btn btn-outline-primary btn-lg" role="button"  data-toggle="modal" href="javascript:void(0)" onclick="openRegisterModal();">SignUp</a><br /><br />
            
           </div>
       </section>

       <section class="col-md-12 content padding tm-equal-col-container" id="services">
        <div class="col-lg-6 col-md-6 col-sm-12 content-item tm-black-translucent-bg tm-services-section-padding">
          <h2 class="main-title text-center dark-blue-text"> What is LISA</h2>
           <p>The motto of LISA is to alarm people if any of their kith and kin meet with an accident, by making call and forwarding a message by scanning the QR Code which will be present in the number plate of the vehicle and also informing to the ambulance and nearby police station about the accident by making call and sharing location along with that.</p>
<!--           <p>In dapibus blandit congue. Sed quam nulla, pellentesque eget metus eu, sollicitudin sodales nisl. Integer tempus id lectus quis cursus.</p>-->
           <button type="button" class="btn btn-big pull-right tm-btn-primary">Read More</button>
       </div>
       <div class="col-lg-6 col-md-6 col-sm-12 tm-white-translucent-bg tm-services-section-padding tm-box-center">

          <div class="tm-left-col">
            <div class="tm-border-box tm-gray-border-br tm-img-box-1">
              <img src="images/tm-img-1.jpg" alt="Image 1" class="tm-img tm-img-tl" >  
             </div>  
             <div class="tm-border-box tm-pink-border-bl tm-img-box-2">
              <img src="images/tm-img-3.jpg" alt="Image 3" class="tm-img tm-img-bl">  
            </div> 
               
          </div>

          <div class="tm-right-col">
             <div class="tm-border-box tm-pink-border-tr tm-img-box-3">  
              <img src="images/tm-img-2.jpg" alt="Image 2" class="tm-img tm-img-tr">  
             </div>
            <div class="tm-border-box tm-gray-border-tl tm-img-box-4">
              <img src="images/tm-img-4.jpg" alt="Image 4" class="tm-img tm-img-br">  
            </div>  
          </div>
                      
       </div>

      </section>

      <section class="col-md-12 content padding tm-float-section tm-section-3">

      <div class="col-lg-6 col-md-6 content-item tm-black-translucent-bg"></div>
      <div class="col-lg-6 col-md-6 content-item tm-white-translucent-bg"></div>
      
      <div class="tm-float-section-header">
        <h2 class="text-center tm-white-text tm-section-3-header">Precept</h2>  
      </div>

      <div class="tm-float-section-body tm-white-bg">
        <div class="col-lg-12">
          <div class="col-md-4 col-lg-4">
            <i class="fa fa-commenting-o fa-4x tm-fa-icon"></i>
            <p>Passing of accidental information to appropriate person at appropriate time plays a vital role in the treatment of casualty So by informing to their peer groups increases the chances of immediate treatment  </p>
          </div>
          <div class="col-md-4 col-lg-4">
            <i class="fa fa-code fa-4x tm-fa-icon"></i>
            <p>Sometimes the treatment to thar person can be delayed due to some law issues, in order to overcome even this LISA is making an automatic call to nearby area police station.</p>
          </div>
          <div class="col-md-4 col-lg-4">
            <i class="fa fa-inbox fa-4x tm-fa-icon"></i>
            <p>Even after providing these call automations the treatment can be delayed due to the late araival of ambulance, hence in LISA the information about the accident is provided to the nearby ambulance other than to the ambulance center .</p>
          </div>
        </div>
      </div>
        
      </section>

   <section class="col-md-12 content" id="contact">
       <div class="col-lg-6 col-md-6 content-item tm-content-box tm-black-translucent-bg">
           <h2 class="contact-title">Contact Info</h2>
           <p>Any queries, updations, enhancement idea, tring-tring to this contact .</p>
           <p>
             Tel: 010-020-0120<br>
             Fax: 060-070-0670<br>
             Email: info@company.com
           </p>
       </div>
       <div class="col-lg-6 col-md-6 content-item tm-content-box tm-white-translucent-bg">
           
           <form action="#" method="post" name="contact-form" class="contact-form">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="form-group">
                    <input name="name" type="text" class="form-control" id="name" placeholder="Your Name" required>
                </div>    
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="form-group contact-field">
                    <input name="email" type="email" class="form-control" id="email" placeholder="Email" required>
                </div>    
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="form-group contact-field">
                    <textarea name="message" rows="6" class="form-control" id="message" placeholder="Message" required></textarea>
                </div>    
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="form-group margin-b-0">
                    <button type="submit" id="form-submit" class="btn pull-right btn-contact tm-btn-primary">Submit</button>
                </div>    
            </div>
        </form>
        <!--</div> -->
        <div id="msgSubmit" class="h3 text-center hidden">Message Submitted!</div>

    </div>

</section>

</div>

<div class="text-center footer">
	<div class="container">
		Copyright &copy; <span class="tm-current-year">2019</span> LISA 
        
        | <a href="index.jsp" target="_parent">Scroll Up</a>
    </div>
</div>

<script>

// Write current year in copyright text.
  document.getElementsByClassName("tm-current-year").value = new Date().getFullYear();

</script>

</body>
</html>