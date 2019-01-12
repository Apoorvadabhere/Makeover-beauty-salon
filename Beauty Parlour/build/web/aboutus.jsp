<%-- 
    Document   : aboutus
    Created on : 22-Nov-2018, 00:22:39
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
            #paracontent
            {
                font-size:25px;
                padding: 100px 100px;
            }
            .menubtns{
                text-align: center;
                font-size: 20px;
                background-color: #ff66ff;
                padding: 12px 10px;
                color: #990099;
                border: #ff66ff;
            }
            menubtns:hover{
                cursor: pointer;
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
        <%
           // HttpSession session=request.getSession(true);
            String emaill=(String)session.getAttribute("email");
            String usern=(String)session.getAttribute("uname");
            session.setAttribute("lastpage", "aboutus");
            
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
        </div>
        
        <div id="content">
            <div id="paracontent" class="col-sm-12">
                <p>
                    Makeover Beauty Salon is one of the earliest and the finest hair and beauty salons in India. Through these years, 
                    we have won the trust of several celebrities and millions of commoners who are our loyal patrons today. Besides this, we also 
                    help aspiring stylists achieve their dreams, with Makeover Beauty Academy, our chain of hair education schools spread across India. 
                    Operating in 24 states and 110 cities in the country, we currently have 636 outlets in addition to establishments in Singapore 
                    and London. Through our professional services, we relentlessly strive to give our customers an experience that they would love 
                    to revisit.
                    <br><br>
                    We’ve evolved together as a family over the last 3 generations and have espoused a culture of science and understanding 
                    that is used to style hair. Our employees are our assets who are meticulously trained on the innumerable scientific 
                    methods of hair cutting and styling that would directly benefit our treasured customers. To be even more specific, the 
                    methodology that we follow is what we call science-based styling and not just styling based on products.
                    <br><br>
                    MB and its subsidiaries together constitute a huge family of 1000+ employees. Unanimously, we all work towards the goal of 
                    ensuring complete customer satisfaction and boosting their confidence levels with the right grooming. This is one of the 
                    primary reasons why we encourage feedback from our customers – to understand if there is some room for improvement.
                </p>
            </div>
        </div>
        
        <div id="footer" class="col-sm-12"><br>All rights reserved</div>
        
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
                        url: "http://localhost:8080/Beauty_Parlour/RepeatEmail",
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
        
    </body>
</html>
