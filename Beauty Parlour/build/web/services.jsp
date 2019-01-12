<%-- 
    Document   : services
    Created on : 30-Jun-2018, 00:11:32
    Author     : Apoorva Dabhere
--%>

<%@page import="java.time.LocalDateTime"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>salon services</title>
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
                /*position: relative;*/
                height: auto;
                
            }
            #container
            {
                height: auto;
                background-color: black;
                color: white;
            }
            #footer
            {
                height: 50px;
                background-color: purple;
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
            .servicebuttons{
                height: 300px;
                width: 250px;
                margin: 100px 0 0 150px;
                float: left;
                /*position: relative;*/
            }
            img{
                /*position: absolute;*/
                bottom: 0;
            }
            /*
            #hair_content{
                display: none;
                width: 1110px;
                margin-left: 90px;
            }
            #bridal_content{
                display: none;
                width: 1110px;
                margin-left: 90px;
            }
            #nail_content{
                display: none;
                width: 1110px;
                margin-left: 90px;
            }*/
            .content{
                display: none;
                width: 1110px;
                margin-left: 90px;
            }
            .bookbtn{
                background-color: #ffcc66;
                text-align: center;
                font-size: 15px;
                color: black;
                padding: 12px 20px;
                margin: 8px 0;
                cursor: pointer;
                border: #ffcc66;
                
            }
            .booking_modal{
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
            .booking_modal_content{
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
            .booking_input{
                width: 80%;
                padding: 12px 20px;
                display: inline;
                border: 1px solid #ccc;
            }
            .booking_button{
               background-color: #ff0099;
               text-align: center;
               font-size: 18px;
               color: white;
               padding: 10px 18px;
               margin: 8px 0;
               width: 80%;
               cursor: pointer;
            }
            #mybookbtn{
                background-color: #33ffcc;
               text-align: center;
               font-size: 20px;
               color: black;
               padding: 12px 20px;
               margin: 8px 0;
               width: 200px;
               cursor: pointer;
            }
        </style>    
    </head>
    <body id="container" >
        
        <%
           // HttpSession session=request.getSession(true);
            String emaill=(String)session.getAttribute("email");
            String usern=(String)session.getAttribute("uname");
            session.setAttribute("lastpage", "services");
            
            response.setHeader("Cache-Control", "No-Cache");
            response.setHeader("Cache-Control", "No-Store");
        %>
        <% 
            if(emaill!=null){
                session.setAttribute("lastpage", null);
        %>
        
        <div class="col-sm-12" id="header">
            <br>
            <h1 align="center"> The Makeover Beauty Salon </h1>
        </div>
        
        <div class="col-sm-12" id="menu">
            <button id='serbtn' class="menubtns" onclick="window.location='home.jsp'">HOME</button>
            <button id='serbtn' class="menubtns" onclick="window.location='services.jsp'">SERVICES</button>
            <button id='abtbtn' class="menubtns" onclick="window.location='mybooktask'">MY BOOKINGS</button>
            <button id='conbtn' class="menubtns" onclick="window.location='aboutus.jsp'">ABOUT US</button>
            <button id='serbtn' class="menubtns" onclick="window.location='LogoutTask'" style="float:right">LOGOUT</button>
            <!--<a href="LogoutTask"><span style="float: right"> LOGOUT</span></a>-->
        </div>
        
        
        <div class="col-sm-12" id="content">
            
            <div class="col-sm-12"> <button id='mybookbtn' onclick="window.location='mybooktask'" style="float:right">My Bookings</button>  </div>
            <center>
                <div class="col-sm-12" style="margin-top:100px">
                    <div class="col-sm-4" id="hairdiv" >
                        <div class="col-sm-12">HAIRS</div>
                        <div class="col-sm-12"> <img class="to_imgs" src=" salon4new.jpg" alt="salon" height="250px" width="250px" onclick="hairtask()"  > <!-- onclick="toggleme('hair_content')" --> </div> 
                    </div>
                    
                    <script>
                        function toggleme(x){
                            //alert("checked"+x);
                            $("#"+x).toggle();
                                alert(x);
                        }
                    </script>
                    
                    <div class="col-sm-4" id="bridaldiv">
                        <div class="col-sm-12">BRIDAL</div>
                        <div class="col-sm-12"> <img class="to_imgs" src=" salon5bridal.jpg" alt="salon" height="250px" width="250px"  onclick="bridaltask()" > </div>
                    </div>
                    <div class="col-sm-4" id="handsdiv">
                        <div class="col-sm-12">HANDS & FEET</div>
                        <div class="col-sm-12"> <img class="to_imgs" src=" salon7nails.jpg" alt="salon" height="250px" width="250px"  onclick="nailtask()" > </div>
                    </div>
                    
                    <div class="col-sm-12 content" id="hair_content" style="background-color:#4A5B80; margin-top:5px;color: #ffff99">
                        <center>hair</center><br>
                        Revitalise your senses and refresh your mind!<br>
                        Hairs are more precious than diamonds for us all.
                        So, its care becomes imperative.
                        Your appearance can be either made or destroyed by the way you keep your hair.
                        Your image both at a professional level as well as at a personal level does count the way your hair look.
                        You must take splendid care of them, and here we are to assist you with it.
                        Therefore we also have various Hair treatments like Dandruff Treatment, Sensitive scalp treatment, damaged hair 
                        treatment, Dryness cure treatment; Split Ends Treatment, chemically treated hair, and Densifying Treatment.<br>
                        <!--<button class="bookbtn" id="hairbook">Book an Appointment</button>-->
                    </div>
                
                    <div class="col-sm-12 content" id="bridal_content" style="background-color:#4A5B80; margin-top:5px;color: #ffff99">
                        <center>Groom & Bridal Make Up</center><br>
                        Revitalise your senses and refresh your mind!<br>
                        We are here to make your wedding an unforgettable tale in the history of your dreams.
                        We have packages for both would be grooms as well as would be brides.
                        Our pre-Groom packages start from Rs 2499/-. 
                        These packages are of different types like Mac, Kryolan, and Air Brush according to your wish.
                        We also have mesmerizing packages of Bridal makeup to transform you into the most beautiful 
                        bride ever seen. They include Regular makeup, Mac Make Up; Kryolan makeup, Organic makeup, 3d makeup,
                        Hd makeup and Air Brush Make Up.<br>
                        <!--<button class="bookbtn" id="hairbook">Book an Appointment</button>-->
                    </div>
                
                    <div class="col-sm-12 content" id="nail_content" style="background-color:#4A5B80; margin-top:5px;color: #ffff99">
                        <center>Hands and feet</center><br>
                        <!--<button class="bookbtn" id="hairbook">Book an Appointment</button>-->
                    </div>
                </div>
            </center>
            
            <center>
                <div class="col-sm-12" style="margin-top:100px">
                    <div class="col-sm-4" id="skindiv">
                        <div class="col-sm-12">SKIN</div>
                        <div class="col-sm-12"> <img src=" salon8face.jpg" alt="salon" height="250px" width="250px"  onclick="skintask()" > </div>
                    </div>
                    <div class="col-sm-4" id="essentialsdiv">
                        <div class="col-sm-12">ESSENTIALS</div>
                        <div class="col-sm-12"> <img src=" salon9face.jpg" alt="salon" height="250px" width="250px"  onclick="esstask()" > </div>
                    </div>
                    <div class="col-sm-4" id="naildiv">
                        <div class="col-sm-12">INNOVATIONS</div>
                        <div class="col-sm-12"> <img src=" salon9face.jpg" alt="salon" height="250px" width="250px"  onclick="innotask()" > </div>
                    </div>
                    
                    <div class="col-sm-12 content" id="skin_content" style="background-color:#4A5B80; margin-top:5px;color: #ffff99">
                        <center>skin</center><br>
                        Revitalise your senses and refresh your mind!<br>
                        <!--<button class="bookbtn" id="hairbook">Book an Appointment</button>-->
                        
                    </div>
                
                    <div class="col-sm-12 content" id="ess_content" style="background-color:#4A5B80; margin-top:5px;color: #ffff99">
                        <center>Essentials</center><br>
                        Revitalise your senses and refresh your mind!<br>
                        <!--<button class="bookbtn" id="hairbook">Book an Appointment</button>-->
                    </div>
                
                    <div class="col-sm-12 content" id="inno_content" style="background-color:#4A5B80; margin-top:5px;color: #ffff99">
                        <center>Innovations</center><br>
                        Revitalise your senses and refresh your mind!<br>
                        We also have services additional to beauty treatments and spas of all kinds to relax you.
                        Other marvelous Hair Spa and rituals include Elixir Ultime 24 Carat Ritual, Express Ritual, Morpho Keratin Ritual,
                        Smoothening Hair Spa, Pro Fiber Spa and Mythic Oil Deep Nourishing Hair Spa.
                        Our further state of the art services includes Ear Piercing, Nose Piercing, Belly Piercing, Nail Art, Nail Extensions
                        and Hair extensions. All these are safe and would give you a unique look. We offer more than a beauty treatment;
                        we provide comprehensively finished beautification to all our valuable customers.<br>
                        <!--<button class="bookbtn" id="hairbook">Book an Appointment</button>-->
                    </div>
                    <div class="col-sm-12" style="padding-top: 30px ">
                        <button class="bookbtn" id="bookapp">Book an Appointment</button>
                    </div>
                    
                </div>
            </center>
            
            <script>
                var x=document.getElementById("hair_content");
                var y=document.getElementById("bridal_content");
                var z=document.getElementById("nail_content");
                var p=document.getElementById("skin_content");
                var q=document.getElementById("ess_content");
                var r=document.getElementById("inno_content");
                var a=document.getElementById("hairdiv");
                function hairtask(){
                    if(x.style.display==="none"){
                        x.style.display="block";
                        y.style.display="none";
                        z.style.display="none";
                    }else{
                        x.style.display="none";
                    }
                }
                function bridaltask(){
                    if(y.style.display==="none"){
                        y.style.display="block";
                        x.style.display="none";
                        z.style.display="none";
                    }else{
                        y.style.display="none";
                    }
                }
                function nailtask(){
                    if(z.style.display==="none"){
                        z.style.display="block";
                        y.style.display="none";
                        x.style.display="none";
                    }else{
                        z.style.display="none";
                    }
                }
                function skintask(){
                    if(p.style.display==="none"){
                        p.style.display="block";
                        q.style.display="none";
                        r.style.display="none";
                    }else{
                        p.style.display="none";
                    }
                }
                function esstask(){
                    if(q.style.display==="none"){
                        q.style.display="block";
                        p.style.display="none";
                        r.style.display="none";
                    }else{
                        q.style.display="none";
                    }
                }
                function innotask(){
                    if(r.style.display==="none"){
                        r.style.display="block";
                        q.style.display="none";
                        p.style.display="none";
                    }else{
                        r.style.display="none";
                    }
                }
            </script>
            
            <!--      
            <input type="date">
            -->
            <br><br>
        </div>
        
        <div id="footer" class="col-sm-12"> <br>all rights reserved </div>
        
        <div id="bmodal" class="booking_modal">
            <div class="booking_modal_content">
                <p style="text-align: center">
                    <b style="font-size: 40px;color: #000000">Book an Appointment </b>
                    <span class="close">&times;</span>
                </p>   
                
                <form action="BookTask">
                    <div style="padding: 50px; margin-left: 100px">
                        <label  style="font-size: 20px"><b>Appointment for-</b></label><br>
                        <!--<input class="booking_input" type="select" name="service" placeholder="" required>-->
                        <select name="services" class="booking_input">
                            <option value="hairs">hairs</option>
                            <option value="hands & feet">hands & feet</option>
                            <option value="skin">skin</option>
                            <option value="bridal">bridal</option>
                            <option value="essentials">essentials</option>
                            <option value="innovations">innovations</option>
                        </select>
                        <br><br>
                        <label  style="font-size: 20px"><b>Date-</b></label><br>
                        <%
                            LocalDateTime bookdate =  LocalDateTime.now();
                            String mindate=bookdate.toString();
                            mindate=mindate.substring(0,10);
                            LocalDateTime max = bookdate.plusDays(30);
                            String maxdate=max.toString();
                            maxdate=maxdate.substring(0,10);
                            
                            //out.print( "<h2 align = \"center\">" +mindate+ "</h2>");
                            //out.print( "<h2 align = \"center\">" +maxdate+ "</h2>");
                        %>
                        
                        <input id="date" value="date" class="booking_input" type="date" name="date" min="<%= mindate %>" max="<%= maxdate %>" onchange="showslots()" required>
                        <br><br>
                        
                        <!--<input type="button" class="booking_button" value="show slots" onclick="showslots()">-->
                        <div id="slots">
                            
                        </div>
                        <button class="booking_button" type="submit" >Book</button >
                        <br>
                        
                    </div>
                </form>
              
            </div>
        </div>
        
                        
        <script>
            $(document).ready(function(){
                $(".to_imgs").click(function(){
                    
                });
                
            function show_div(x){
                $("#"+x).toggle();
            }
                
            });
        </script>
                        
                        
        <script>
            var bmodal=document.getElementById('bmodal');
            
            var btn=document.getElementById('bookapp');
           // var btn = document.getElementsByClassName("bookbtn");
            var span = document.getElementsByClassName("close")[0];
            
            btn.onclick=function(){
                bmodal.style.display="block";
            }
            span.onclick=function(){
                bmodal.style.display="none";
            }
           // document.write(lmodal);
            
            window.onclick = function(event) {
            if (event.target === bmodal) {
                bmodal.style.display = "none";
                }
            }
            
            function showslots()
            {
               // alert("u are ready to book slots");
                $(document).ready(function(){
                    
                    var x=$("#date").val();
 
                    $.ajax({
                        type: "GET",           
                        data: 'inpdate='+x,
                        url: "bookedslots",
                        success:function(content){
                            alert("+"+content+"+");
              
                            var opt = "";
                            var i;
                            var u=21;
                            var count=0;
                            
                            for(i=0;i<22;i++){
                                
                                if(content.charAt(i) == 1){
                                    count++;
                                }
                                if(count >= 22){
                                    alert("No bookings available for this day!");
                                    break;
                                }
                                if(content.charAt(i) == 0){
                                    var time = "";
                                    var k;
                                   // var u=21;
                                    for(k=0;k<11;k++){
                                        time+= content.charAt(u+k+1);
                                     //   u=u+11;
                                    }
                                    opt+="<option value='"+(i+1)+"'>"+time+"</option>";
                                }
                                u=u+11;
                            }
                        if(count < 22){
                            $("#slots").html(" <label  style='font-size: 20px'><b>Select time-</b></label><br>\n\
                                            <select name='slot' class='booking_input'>"+opt+"</select> "); 
                        }
                        }
                    });           
                    });                
                
            }
            
            var Msg ='<%=session.getAttribute("AlertBook")%>';
            if (Msg != "null") {
                function alertName(){
                    if (Msg == "Yes") {
                        alert("Appointment booked");
                        <% session.setAttribute("AlertBook", "null"); %>
                    }
                    if (Msg == "No") {
                        alert("Appointment not booked");
                    }
                } 
            }
            //<% session.setAttribute("AlertBook", "null"); %>
        </script>
        
        <script type="text/javascript"> window.onload = alertName; </script>
        
        <% }
        else{
            response.sendRedirect("home.jsp");
        }
        %>
    </body>
</html>