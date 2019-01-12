<%-- 
    Document   : home
    Created on : 14-Jun-2018, 16:03:49
    Author     : Apoorva Dabhere
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Makeover Beauty Salon</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <style>
            #header
            {
                height: 100px;
                background-color: purple;
                color: white;
            }
            
            #menu
            {
                height: 55px;
                background-color: #ff66ff;
                color: #990099;
                font-size: 20px;
            }
            
            #content
            {
                height: 700px;
            }
            #container
            {
                height: 900px;
                background-color: black;
                color: white;
            }
            #footer
            {
                height: 50px;
                background-color: purple;
            }
            #slideshow{
                margin: 100px 0 0 250px;
            }
            .slides{
                display: none;
                width: 800px;
                height: 420px;
            }
            a{
                text-decoration: none;
                color: #990099;
            }
            .login_modal{
                display: none;
                z-index: 1;
                left: 0;
                top: 0; 
                background-color: rgba(0,0,0,0.4);
                height: inherit;
                width: 100%;
                overflow: auto;
                position: fixed;
            }
            .signin_modal{
                display: none;
                z-index: 1;
                left: 0;
                top: 0; 
                background-color: rgba(0,0,0,0.4);
                height: inherit;
                width: 100%;
                overflow: auto;
                position: fixed;
            }
            .signup_modal_content{
                color: black;
                padding: 20px;
                background-color: white;
                margin: 10px auto;
                width: 50%;
            }
            .login_modal_content{
                color: black;
                padding: 20px;
                background-color: white;
                margin: 5% auto;
                width: 50%;
            }
            .close{
                float: right;
                font-weight: 900;
                font-size: 28px;
            }
            .close:hover,.close:focus {
                color: gray;
                text-decoration: none;
                cursor: pointer;
            }
            .sclose{
                float: right;
                font-weight: 900;
                font-size: 28px;
            }
            .sclose:hover,.sclose:focus {
                color: gray;
                text-decoration: none;
                cursor: pointer;
            }
            .input{
                width: 100%;
                padding: 12px 20px;
                display: inline;
                border: 1px solid #ccc;
            }
            .button{
               background-color: #009933;
               text-align: center;
               font-size: 20px;
               color: white;
               padding: 12px 20px;
               margin: 8px 0;
               width: 100%;
               cursor: pointer;
            }
            .menubtns{
                text-align: center;
                font-size: 20px;
                background-color: #ff66ff;
                padding: 12px 10px;
                color: #990099;
                border: #ff66ff;
            }
            .menubtns:hover{
                cursor: pointer;
            }
            #lgn_regbtn{
                text-align: center;
                background-color: white;
                padding: 2px 2px;
                border: 2px solid #0000ff;
                border-radius: 4px;
                color: #0000ff;
            }
            #reg_lgnbtn{
                text-align: center;
                background-color: white;
                padding: 2px 2px;
                border: 2px solid #0000ff;
                border-radius: 4px;
                color: #0000ff;
            }
        </style>
    </head>
    <body id="container">
        <!--<div class="login_modal">hello world</div>-->
        
        <%
           // HttpSession session=request.getSession(true);
            String emaill=(String)session.getAttribute("email");
            String usern=(String)session.getAttribute("uname");
            
            response.setHeader("Cache-Control", "No-Cache");
            response.setHeader("Cache-Control", "No-Store");
        %>
        
        <div id="header">
            <br>
            <h1 align="center"> The Makeover Beauty Salon </h1>
        
        </div>
        <div id="menu">
           
            <%
                if(emaill==null){
            %>
            
            <button id='lgnbtn' style="float: right;" class="menubtns">LOGIN</button>
            <button id='sgnbtn' style="float: right;" class="menubtns">SIGNUP </button>
            
            
            <%
                }
                else{
            %>
            
            <button id='serbtn' class="menubtns" onclick="window.location='LogoutTask'" style="float:right">LOGOUT</button>
            <%
                }
            %>
           <button id='serbtn' class="menubtns" onclick="window.location='home.jsp'">HOME</button>
           <button id='serbtn' class="menubtns" onclick="window.location='services.jsp'">SERVICES</button>
           <button id='abtbtn' class="menubtns" onclick="window.location='mybooktask'">MY BOOKINGS</button>
           <button id='conbtn' class="menubtns" onclick="window.location='aboutus.jsp'">ABOUT US</button>
            <%
             //   if(emaill==null){
                   // session.setAttribute("serlogin", "yes");
            %> 
           <!--<script>
               function servicebtn(){
                    var lmodal=document.getElementById('lmodal');
            
                    var btn=document.getElementById('serbtn');
            
                    var span = document.getElementsByClassName("close")[0];
                
                    btn.onclick=function(){
                        lmodal.style.display="block";
                    }
                    span.onclick=function(){
                        lmodal.style.display="none";
                    }
                    // document.write(lmodal);
            
                    window.onclick = function(event) {
                        if (event.target === lmodal) {
                            lmodal.style.display = "none";
                        }
                    }     
               }    
           </script>-->
            <%
                
                //}
                //else{
            %>
            <!--<script>
               function servicebtn(){
                    window.location='services.jsp';    
               }
           </script>-->
            <%
              //  }
            %>
          
        </div>    
        
        <div id="content">
            <%
            if(emaill!=null){
                out.print("<center>");
                out.print("<font size='8'>");
                out.print("<p> hello"+" "+usern+"!");
                out.print("</p>");
                out.print("</font>");
                out.print("</center>");
            }
            %>
            <div id="slideshow">
                <img src=" salon1.jpg" alt="salon" class="slides">
                <img src=" salon2.jpg" alt="salon" class="slides">
                <img src=" salon3.jpg" alt="salon" class="slides">
            </div>
            
        </div>
        
        <script>
            var index=0;
            salonslides();
            
            function salonslides(){
                var i;
                var x=document.getElementsByClassName("slides");
                //document.write(x[3]);
                for(i=0;i<x.length;i++){
                    x[i].style.display="none";
                }
                index++;
                if(index > x.length){index=1;}
                x[index-1].style.display="block";
                setTimeout(salonslides, 2000);
            }
            
        </script>
        
        <div id="footer"><br>All rights reserved</div>
        
        <!-- login modal-->
        
        <div id="lmodal" class="login_modal">
            <div class="login_modal_content">
                <p style="text-align: center">
                    <b style="font-size: 40px;color: #000000">Login </b>
                    <span class="close">&times;</span>
                </p>   
                <form action="LoginTask" method="post">
                    <div style="padding: 50px">
                        <label  style="font-size: 20px"><b>Email</b></label><br>
                        <input class="input" type="email" name="email" placeholder="Enter Email" required>
                        <br><br>
                        <label  style="font-size: 20px"><b>Password</b></label><br>
                        <input class="input" type="password" name="pass" placeholder="Enter Passwrd" required>
                        <br><br>
                        <button class="button" type="submit" >Login</button >
                        <br>
                        <p style="text-align: center;">new user?<input type="button" id="lgn_regbtn" value="Register"> </p>
                        
                    </div>
                </form>
                
            </div>
        </div>
        
        <script>
            var lmodal=document.getElementById('lmodal');
            
            var btn=document.getElementById('lgnbtn');
            
            var span = document.getElementsByClassName("close")[0];
            
            btn.onclick=function(){
                lmodal.style.display="block";
            }
            span.onclick=function(){
                lmodal.style.display="none";
            }
           // document.write(lmodal);
            
            window.onclick = function(event) {
            if (event.target === lmodal) {
                lmodal.style.display = "none";
                }
            }
        </script>
        
        <!-- Signup modal -->
        
        <div id="smodal" class="signin_modal">
            <div class="signup_modal_content">
                <p style="text-align: center">
                    <b style="font-size: 40px;color: #000000">SignUp </b>
                    <span class="sclose">&times;</span>
                </p>   
                <form action="RegistrationTask" method="post">
                    <div style="padding: 50px">
                        <label  style="font-size: 20px"><b>Username</b></label><br>
                        <input class="input" type="text" name="uname" placeholder="Enter Username" required>
                        <br>
                        <label  style="font-size: 20px"><b>Email</b></label><br>
                        <input class="input" type="email" name="email" id="regEmail" placeholder="Enter Email" onkeyup="checkemail()" required>
                        <br>
                        <label  style="font-size: 20px"><b>Password</b></label><br>
                        <input class="input" type="password" name="pass" placeholder="Enter Passwrd" id="pass" onkeyup="check_pass()" required>
                        <br>
                        <label  style="font-size: 20px"><b>Reenter Password</b></label><br>
                        <input class="input" type="password" name="rpass" placeholder="ReEnter Passwrd" id="rpass" onkeyup="check_pass()" required>
                        <br> <span id='message'></span>  <br>
                        <label  style="font-size: 20px"><b>Mobile</b></label><br>
                        <input class="input" type="text" name="mob" placeholder="Enter Mobile Number" required>
                        <br><br>
                        <button class="button" type="submit" id="submit">Register</button>
                        <!--<input type="submit" class="input" value="Register">-->
                        <br>
                        <p style="text-align: center;">already registered?<input type="button" id="reg_lgnbtn" value="Login"> </p>
                        
                    </div>
                </form> 
                
            </div>
        </div>
        
        <script>
            var smodal=document.getElementById('smodal');
            
            var btn=document.getElementById('sgnbtn');
            var lgn_regbtn=document.getElementById('lgn_regbtn');
            var span = document.getElementsByClassName("sclose")[0];
            
            var lmodal=document.getElementById('lmodal');
            
            btn.onclick=function(){
                smodal.style.display="block";
            }
            lgn_regbtn.onclick=function(){
                lmodal.style.display="none";
                smodal.style.display="block";
            }
            
            var reg_lgnbtn=document.getElementById('reg_lgnbtn');
            reg_lgnbtn.onclick=function(){
                smodal.style.display="none";
                lmodal.style.display="block";
            }
            span.onclick=function(){
                smodal.style.display="none";
            }
           // document.write(lmodal);
            
            window.onclick = function(event) {
            if (event.target === smodal) {
                smodal.style.display = "none";
                }
            }
           // var checkemail = function() {
            function checkemail()
            {
                //alert("u are ready to book slots");
                $(document).ready(function(){
                    
                    var x=$("#regEmail").val();
                    //alert("@@@@@@@@@@@@@@@@@@@@@@@@@");
                    $.ajax({
                        type: "GET",           
                        data: 'emailCheck='+x,
                        url: "RepeatEmail",
                        success:function(content){
                            //alert("+"+content+"+");
                                
                            if(content.charAt(0) == 1){
                                document.getElementById('submit').disabled = true;
                                document.getElementById('submit').style.opacity = 0.6;
                                alert("account alredy exists");
                            }
                            if(content.charAt(0) == 0){
                                document.getElementById('submit').disabled = false;
                                document.getElementById('submit').style.opacity = 1;
                            }
                        }
                    });           
                });
            }
            
            var check_pass = function() {
                if (document.getElementById('pass').value ==
                    document.getElementById('rpass').value) {
                    document.getElementById('message').style.color = 'green';
                    document.getElementById('message').innerHTML = 'matching';
                    document.getElementById('submit').disabled = false;
                    document.getElementById('submit').style.opacity = 1;
                } else {
                    document.getElementById('message').style.color = 'red';
                    document.getElementById('message').innerHTML = 'not matching';
                    document.getElementById('submit').disabled = true;
                    document.getElementById('submit').style.opacity = 0.6;
                }
            }
           </script> 
        <script>
            $(document).ready(function(){
                //alert("testing");
                //lmodal.style.display="block";
                <% 
                String last=(String)session.getAttribute("lastpage");
                //session.setAttribute("lastpage", null);
                if(last != null){
                %>
                    var lmodal=document.getElementById('lmodal');
                    
                    //var btn=document.getElementById('serbtn');
                    
                    var span = document.getElementsByClassName("close")[0];
                    
                    lmodal.style.display="block";
                    
                    span.onclick=function(){
                        lmodal.style.display="none";
                    }
                    
                    window.onclick = function(event) {
                        if (event.target === lmodal) {
                            lmodal.style.display = "none";
                        }
                    }
                
                <% } %>
            });
        </script>
        
    </body>
</html> 
