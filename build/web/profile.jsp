<%-- 
    Document   : profile
    Created on : 25 Feb, 2019, 6:39:48 PM
    Author     : aravind
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link type="text/css" rel="Stylesheet" href="css/profile.css">

    <script type="text/javascript" src="qrcode.js"></script>
    <!-- SJIS Support (optional) -->
    <script type="text/javascript" src="qrcode_SJIS.js"></script>
<!--
    <script type="text/javascript" src="qrcode_SJIS.js"></script>
-->
    <!-- Uncomment to encode string in qrcode as UTF8 (optional) -->
<!--
    <script type="text/javascript" src="qrcode_UTF8.js"></script>
-->
    <script type="text/javascript" src="sample.js"></script>
<script>
    $(function() {

    $('#home-tab').click(function(e) {
		$("#home").delay(100).fadeIn(100);
 		$("#call").fadeOut(100);
		$('#profile-tab').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#profile-tab').click(function(e) {
		$("#call").delay(100).fadeIn(100);
 		$("#home").fadeOut(100);
		$('#home-tab').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});


function prepHref(linkElement) {
    var myDiv = document.getElementById('dimg');
    var myImage = myDiv.children[0];
    linkElement.href = myImage.src;
}
</script>
<script>
    
    $(document).ready(fuction(){
        
        $("#reg").click(function(){
            
            $("#frm").attr("action","regi");  
        });
         $("#upd").click(function(){
            
            $("#frm").attr("action","up");  
        });
        
    });
    
</script>
        
        
        <style>
            body{
                  background:url("images/background.jpg");
            }
            
            #em{
                
                position: absolute;
                top:580px;
                left:300px;
            }
         #dq
         {
          position: absolute;
          left:290px;
          top:100px;
             
         }
          #bq
         {
             
          position:absolute;
          left:290px;
          top:280px;
          width: 300px;
          height:50px;
/*          width: 300px;
          background: blue;
          color:white;
          border-radius: 10%;
          border-style: hidden;*/
          
             
         }
.image-upload > input
{
    display: none;
}
       
            
        </style>
        
    </head>
    <body>
      
        
      <%
      
      String fname=request.getParameter("fname");
      String lname=request.getParameter("lname");
      String gender=request.getParameter("gender");
      String mstatus=request.getParameter("mstatus");
      String mail=request.getParameter("mail");
      String phno=request.getParameter("phno");
      String dob=request.getParameter("dob");
      String bgroup=request.getParameter("bgroup");
      String acard=request.getParameter("acard");
      String vnum=request.getParameter("vnum");
      String dlnum=request.getParameter("dlnum");
      String dlexp=request.getParameter("dlexp");
      String addr=request.getParameter("addr");
      String ec1=request.getParameter("ec1");
      String ec2=request.getParameter("ec2");
      String ec3=request.getParameter("ec3");
      String eaddr=request.getParameter("eaddr");
      String addr2=request.getParameter("addr2");
      String addr3=request.getParameter("addr3");
      String addr4=request.getParameter("addr4");
      String eaddr2=request.getParameter("eaddr2");
      String eaddr3=request.getParameter("eaddr3");
      %>
      
<c:set var="fname" scope="session" value="<%=fname%>"/> 
  <c:set var="lname" scope="session" value="<%=lname%>"/> 
  <c:set var="gender" scope="session" value="<%=gender%>"/> 
  <c:set var="mstatus" scope="session" value="<%=mstatus%>"/> 
  <c:set var="mail" scope="session" value="<%=mail%>"/> 
  <c:set var="phno" scope="session" value="<%=phno%>"/> 
  <c:set var="dob" scope="session" value="<%=dob%>"/> 
  <c:set var="bgroup" scope="session" value="<%=bgroup%>"/> 
  <c:set var="acard" scope="session" value="<%=acard%>"/> 
  <c:set var="vnum" scope="session" value="<%=vnum%>"/> 
  <c:set var="dlnum" scope="session" value="<%=dlnum%>"/> 
  <c:set var="dlexp" scope="session" value="<%=dlexp%>"/> 
  <c:set var="addr" scope="session" value="<%=addr%>"/> 
  <c:set var="ec1" scope="session" value="<%=ec1%>"/> 
  <c:set var="ec2" scope="session" value="<%=ec2%>"/> 
  <c:set var="ec3" scope="session" value="<%=ec3%>"/> 
  <c:set var="eaddr" scope="session" value="<%=eaddr%>"/> 
  <c:set var="addr2" scope="session" value="<%=addr2%>"/>  
  <c:set var="addr3" scope="session" value="<%=addr3%>"/> 
  <c:set var="addr4" scope="session" value="<%=addr4%>"/> 
  <c:set var="eaddr2" scope="session" value="<%=eaddr2%>"/> 
  <c:set var="eaddr3" scope="session" value="<%=eaddr3%>"/>  
<!------ Include the above in your HEAD tag ---------->
    


<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left"> 
                        
                        <img src="images/logo.png" alt=""  >  
                        <a href="index.jsp"><input type="button" style=" position: relative; left:-50px"  class="btnRegister"  value="logout"/></a>     
                        <!--<img id="dimg"  src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""><br><br><br><br><br>-->
           

     

                      
                    
             </div>
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tabpanel" aria-controls="home-tab" aria-selected="true">Personal </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#call" role="tabpanel" aria-controls="profile-tab" aria-selected="true">QR code </a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Personal Details</h3>
                                <form id="frm" action="regi">
                                <div class="row register-form">
                                    
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="First Name *" value="${fname}" name="fname" />
                                        </div>
                                         <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="male" checked>
                                                    <span> Male </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span>Female </span> 
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Email *" value="${fname}" name="email" />
                                        </div>
                                        <div class="form-group">
                                            <input type="date" class="form-control" placeholder="Date Of Birth *" value="${dob}" name="dob" />
                                        </div>
                                        <div class="form-group">
                                           <input type="text" class="form-control" placeholder="Enter the Adhar Card Number *" value="${acard}" name="acard" />
                                        </div>
                                          <div class="form-group">
                                           <input type="text" class="form-control" placeholder="Enter the Driving License Number *" value="${dlnum}" name="dlnum" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Address Line1 *" value="${addr}" name="addr1" />
                                        </div>
                                         <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Address Line1 3*" value="${addr3}" name="addr3" />
                                        </div>
                                        
                                        
                                        
                                          <br><br><br><br>
                                        
                                        
                                         <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Emergence Contact 1*" id="c1" value="${ec1}"  name="ec1"/>
                                        </div>
                                         <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Emergence Contact 2*" id="c2" value="${ec2}" name="ec2" />
                                        </div>
                                           <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Emergence Contact 3*" id="c3" value="${ec3}" name="ec3"/>
                                        </div>
                      
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Last Name *" value="${lname}"  name="lname"/>
                                        </div>
                                         <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="mats" value="Single" checked>
                                                    <span> Single </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="mats" value="Married" >
                                                    <span>Married</span> 
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input type="text"  class="form-control" placeholder="Your Phone *" value="${phno}" name="phno" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Enter Your Blood Group *" value="${bgroup}" name="blood" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Enter Your vechical Number *"  value="${vnum}" name="vnum" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Enter Your Expire Date(License) *" value="${dlexp}" name="dlex"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Address Line2 *" value="${addr2}" name="addr2"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Address Line4 *" value="${addr4}" name="addr4" />
                                        </div>
                                        
                                        <br><br><br><br>
                                        
                                         <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Address Line1 *" value="${eaddr}" name="eaddr1" />
                                        </div>
                                         <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Address Line1 2*" value="${eadd2}" name="eaddr2" />
                                        </div>
                                         <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Address Line1 3*" value="${eaddr3}" name="eaddr3" />
                                        </div>
                                        <script>
                                            function getdata()
                                                    {
                                                      alert("hi");
             
    
                                       var a=document.getElementById("v").value;
                                     var b=document.getElementById("c1").value;
                                     var c=document.getElementById("c2").value;
                                     var d=document.getElementById("c3").value;
    
                        document.getElementById("dq").innerHTML=a+"\n"+b+"\n"+c+"\n"+d;
//    
    
}
                                        </script>
                                        
                                        
                                        <input type="submit" class="btnRegister" id="reg" value="Register"/>
                                         
                                        <input type="button" class="btnRegister"   value="Get QR Code"  onclick="getdata()"/>
                                    </div>
                                   
                                </div>
                                
                                 </form>
                                
                                 <h3 id="em">Emergence Contact</h3>
                                
                                
                            </div>
                                        <div style="height:700px" class="tab-pane fade show" id="call" role="tabpanel" aria-labelledby="profile-tab">
                                <h3  class="register-heading">Generate QR code</h3>
                                <form name="qrForm">
      <span style="display: none;">TypeNumber:</span>
      <select name="t" style="display: none;"></select>
      <span style="display: none;">ErrorCorrectionLevel:</span>
      <select name="e" style="display: none;">
        <option value="L">L(7%)</option>
        <option value="M" selected="selected">M(15%)</option>
        <option value="Q">Q(25%)</option>
        <option value="H">H(30%)</option>
      </select>
      <span style="display: none;">Mode:</span>
      <select name="m" style="display: none;">
        <option value="Numeric">Numeric</option>
        <option value="Alphanumeric">Alphanumeric</option>
        <option value="Byte" selected>Byte</option>
        <option value="Kanji">Kanji</option>
      </select>
      <span style="display: none;">Multibyte:</span>
      <select name="mb" style="display: none;">
        <option value="default">None</option>
        <option value="SJIS">SJIS</option>
        <option value="UTF-8" selected>UTF-8</option>
      </select>
      <br/>
      <textarea name="msg" rows="10" cols="40" id="dq"  placeholder="Enter your details line by line"></textarea>
      <br/>
    
      <input type="button" class="btnRegister" value="Generate QR Code" id="bq"  onclick="update_qrcode()"/>
                              
      <div id="qr" height="1000" width="1000" style="display: inline-block;position: absolute;
           top:500px;left:350px;"></div>
           


    </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
    </body>
</html>
