package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>The Makeover Beauty Salon</title>\n");
      out.write("        \n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        \n");
      out.write("        <!-- jQuery library -->\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("        <!-- Latest compiled JavaScript -->\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            #header\n");
      out.write("            {\n");
      out.write("                height: 100px;\n");
      out.write("                background-color: purple;\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #menu\n");
      out.write("            {\n");
      out.write("                height: 55px;\n");
      out.write("                background-color: #ff66ff;\n");
      out.write("                color: #990099;\n");
      out.write("                font-size: 20px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #content\n");
      out.write("            {\n");
      out.write("                height: 700px;\n");
      out.write("            }\n");
      out.write("            #container\n");
      out.write("            {\n");
      out.write("                height: 900px;\n");
      out.write("                background-color: black;\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            #footer\n");
      out.write("            {\n");
      out.write("                height: 50px;\n");
      out.write("                background-color: purple;\n");
      out.write("            }\n");
      out.write("            #slideshow{\n");
      out.write("                margin: 100px 0 0 250px;\n");
      out.write("            }\n");
      out.write("            .slides{\n");
      out.write("                display: none;\n");
      out.write("                width: 800px;\n");
      out.write("                height: 420px;\n");
      out.write("            }\n");
      out.write("            a{\n");
      out.write("                text-decoration: none;\n");
      out.write("                color: #990099;\n");
      out.write("            }\n");
      out.write("            .login_modal{\n");
      out.write("                display: none;\n");
      out.write("                z-index: 1;\n");
      out.write("                left: 0;\n");
      out.write("                top: 0; \n");
      out.write("                background-color: rgba(0,0,0,0.4);\n");
      out.write("                height: inherit;\n");
      out.write("                width: 100%;\n");
      out.write("                overflow: auto;\n");
      out.write("                position: fixed;\n");
      out.write("            }\n");
      out.write("            .signin_modal{\n");
      out.write("                display: none;\n");
      out.write("                z-index: 1;\n");
      out.write("                left: 0;\n");
      out.write("                top: 0; \n");
      out.write("                background-color: rgba(0,0,0,0.4);\n");
      out.write("                height: inherit;\n");
      out.write("                width: 100%;\n");
      out.write("                overflow: auto;\n");
      out.write("                position: fixed;\n");
      out.write("            }\n");
      out.write("            .signup_modal_content{\n");
      out.write("                color: black;\n");
      out.write("                padding: 20px;\n");
      out.write("                background-color: white;\n");
      out.write("                margin: 10px auto;\n");
      out.write("                width: 50%;\n");
      out.write("            }\n");
      out.write("            .login_modal_content{\n");
      out.write("                color: black;\n");
      out.write("                padding: 20px;\n");
      out.write("                background-color: white;\n");
      out.write("                margin: 5% auto;\n");
      out.write("                width: 50%;\n");
      out.write("            }\n");
      out.write("            .close{\n");
      out.write("                float: right;\n");
      out.write("                font-weight: 900;\n");
      out.write("                font-size: 28px;\n");
      out.write("            }\n");
      out.write("            .close:hover,.close:focus {\n");
      out.write("                color: gray;\n");
      out.write("                text-decoration: none;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("            .sclose{\n");
      out.write("                float: right;\n");
      out.write("                font-weight: 900;\n");
      out.write("                font-size: 28px;\n");
      out.write("            }\n");
      out.write("            .sclose:hover,.sclose:focus {\n");
      out.write("                color: gray;\n");
      out.write("                text-decoration: none;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("            .input{\n");
      out.write("                width: 100%;\n");
      out.write("                padding: 12px 20px;\n");
      out.write("                display: inline;\n");
      out.write("                border: 1px solid #ccc;\n");
      out.write("            }\n");
      out.write("            .button{\n");
      out.write("               background-color: #009933;\n");
      out.write("               text-align: center;\n");
      out.write("               font-size: 20px;\n");
      out.write("               color: white;\n");
      out.write("               padding: 12px 20px;\n");
      out.write("               margin: 8px 0;\n");
      out.write("               width: 100%;\n");
      out.write("               cursor: pointer;\n");
      out.write("            }\n");
      out.write("            .menubtns{\n");
      out.write("                text-align: center;\n");
      out.write("                font-size: 20px;\n");
      out.write("                background-color: #ff66ff;\n");
      out.write("                padding: 12px 10px;\n");
      out.write("                color: #990099;\n");
      out.write("                border: #ff66ff;\n");
      out.write("            }\n");
      out.write("            .menubtns:hover{\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("            #lgn_regbtn{\n");
      out.write("                text-align: center;\n");
      out.write("                background-color: white;\n");
      out.write("                padding: 2px 2px;\n");
      out.write("                border: 2px solid #0000ff;\n");
      out.write("                border-radius: 4px;\n");
      out.write("                color: #0000ff;\n");
      out.write("            }\n");
      out.write("            #reg_lgnbtn{\n");
      out.write("                text-align: center;\n");
      out.write("                background-color: white;\n");
      out.write("                padding: 2px 2px;\n");
      out.write("                border: 2px solid #0000ff;\n");
      out.write("                border-radius: 4px;\n");
      out.write("                color: #0000ff;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body id=\"container\">\n");
      out.write("        <!--<div class=\"login_modal\">hello world</div>-->\n");
      out.write("        \n");
      out.write("        ");

           // HttpSession session=request.getSession(true);
            String emaill=(String)session.getAttribute("email");
            String usern=(String)session.getAttribute("uname");
            
            response.setHeader("Cache-Control", "No-Cache");
            response.setHeader("Cache-Control", "No-Store");
        
      out.write("\n");
      out.write("        \n");
      out.write("        <div id=\"header\">\n");
      out.write("            <br>\n");
      out.write("            <h1 align=\"center\"> The Makeover Beauty Salon </h1>\n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("        <div id=\"menu\">\n");
      out.write("           \n");
      out.write("            ");

                if(emaill==null){
            
      out.write("\n");
      out.write("            \n");
      out.write("            <button id='lgnbtn' style=\"float: right;\" class=\"menubtns\">LOGIN</button>\n");
      out.write("            <button id='sgnbtn' style=\"float: right;\" class=\"menubtns\">SIGNUP </button>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            ");

                }
                else{
            
      out.write("\n");
      out.write("            \n");
      out.write("            <button id='serbtn' class=\"menubtns\" onclick=\"window.location='LogoutTask'\" style=\"float:right\">LOGOUT</button>\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("           <button id='serbtn' class=\"menubtns\" onclick=\"window.location='home.jsp'\">HOME</button>\n");
      out.write("           <button id='serbtn' class=\"menubtns\" onclick=\"window.location='services.jsp'\">SERVICES</button>\n");
      out.write("           <button id='abtbtn' class=\"menubtns\" onclick=\"window.location='mybooktask'\">MY BOOKINGS</button>\n");
      out.write("           <button id='conbtn' class=\"menubtns\" onclick=\"window.location='aboutus.jsp'\">ABOUT US</button>\n");
      out.write("            ");

             //   if(emaill==null){
                   // session.setAttribute("serlogin", "yes");
            
      out.write(" \n");
      out.write("           <!--<script>\n");
      out.write("               function servicebtn(){\n");
      out.write("                    var lmodal=document.getElementById('lmodal');\n");
      out.write("            \n");
      out.write("                    var btn=document.getElementById('serbtn');\n");
      out.write("            \n");
      out.write("                    var span = document.getElementsByClassName(\"close\")[0];\n");
      out.write("                \n");
      out.write("                    btn.onclick=function(){\n");
      out.write("                        lmodal.style.display=\"block\";\n");
      out.write("                    }\n");
      out.write("                    span.onclick=function(){\n");
      out.write("                        lmodal.style.display=\"none\";\n");
      out.write("                    }\n");
      out.write("                    // document.write(lmodal);\n");
      out.write("            \n");
      out.write("                    window.onclick = function(event) {\n");
      out.write("                        if (event.target === lmodal) {\n");
      out.write("                            lmodal.style.display = \"none\";\n");
      out.write("                        }\n");
      out.write("                    }     \n");
      out.write("               }    \n");
      out.write("           </script>-->\n");
      out.write("            ");

                
                //}
                //else{
            
      out.write("\n");
      out.write("            <!--<script>\n");
      out.write("               function servicebtn(){\n");
      out.write("                    window.location='services.jsp';    \n");
      out.write("               }\n");
      out.write("           </script>-->\n");
      out.write("            ");

              //  }
            
      out.write("\n");
      out.write("          \n");
      out.write("        </div>    \n");
      out.write("        \n");
      out.write("        <div id=\"content\">\n");
      out.write("            ");

            if(emaill!=null){
                out.print("<center>");
                out.print("<font size='8'>");
                out.print("<p> hello"+" "+usern+"!");
                out.print("</p>");
                out.print("</font>");
                out.print("</center>");
            }
            
      out.write("\n");
      out.write("            <div id=\"slideshow\">\n");
      out.write("                <img src=\" salon1.jpg\" alt=\"salon\" class=\"slides\">\n");
      out.write("                <img src=\" salon2.jpg\" alt=\"salon\" class=\"slides\">\n");
      out.write("                <img src=\" salon3.jpg\" alt=\"salon\" class=\"slides\">\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("            var index=0;\n");
      out.write("            salonslides();\n");
      out.write("            \n");
      out.write("            function salonslides(){\n");
      out.write("                var i;\n");
      out.write("                var x=document.getElementsByClassName(\"slides\");\n");
      out.write("                //document.write(x[3]);\n");
      out.write("                for(i=0;i<x.length;i++){\n");
      out.write("                    x[i].style.display=\"none\";\n");
      out.write("                }\n");
      out.write("                index++;\n");
      out.write("                if(index > x.length){index=1;}\n");
      out.write("                x[index-1].style.display=\"block\";\n");
      out.write("                setTimeout(salonslides, 2000);\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("        <div id=\"footer\"><br>All rights reserved</div>\n");
      out.write("        \n");
      out.write("        <!-- login modal-->\n");
      out.write("        \n");
      out.write("        <div id=\"lmodal\" class=\"login_modal\">\n");
      out.write("            <div class=\"login_modal_content\">\n");
      out.write("                <p style=\"text-align: center\">\n");
      out.write("                    <b style=\"font-size: 40px;color: #000000\">Login </b>\n");
      out.write("                    <span class=\"close\">&times;</span>\n");
      out.write("                </p>   \n");
      out.write("                <form action=\"LoginTask\" method=\"post\">\n");
      out.write("                    <div style=\"padding: 50px\">\n");
      out.write("                        <label  style=\"font-size: 20px\"><b>Email</b></label><br>\n");
      out.write("                        <input class=\"input\" type=\"email\" name=\"email\" placeholder=\"Enter Email\" required>\n");
      out.write("                        <br><br>\n");
      out.write("                        <label  style=\"font-size: 20px\"><b>Password</b></label><br>\n");
      out.write("                        <input class=\"input\" type=\"password\" name=\"pass\" placeholder=\"Enter Passwrd\" required>\n");
      out.write("                        <br><br>\n");
      out.write("                        <button class=\"button\" type=\"submit\" >Login</button >\n");
      out.write("                        <br>\n");
      out.write("                        <p style=\"text-align: center;\">new user?<input type=\"button\" id=\"lgn_regbtn\" value=\"Register\"> </p>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("            var lmodal=document.getElementById('lmodal');\n");
      out.write("            \n");
      out.write("            var btn=document.getElementById('lgnbtn');\n");
      out.write("            \n");
      out.write("            var span = document.getElementsByClassName(\"close\")[0];\n");
      out.write("            \n");
      out.write("            btn.onclick=function(){\n");
      out.write("                lmodal.style.display=\"block\";\n");
      out.write("            }\n");
      out.write("            span.onclick=function(){\n");
      out.write("                lmodal.style.display=\"none\";\n");
      out.write("            }\n");
      out.write("           // document.write(lmodal);\n");
      out.write("            \n");
      out.write("            window.onclick = function(event) {\n");
      out.write("            if (event.target === lmodal) {\n");
      out.write("                lmodal.style.display = \"none\";\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("        <!-- Signup modal -->\n");
      out.write("        \n");
      out.write("        <div id=\"smodal\" class=\"signin_modal\">\n");
      out.write("            <div class=\"signup_modal_content\">\n");
      out.write("                <p style=\"text-align: center\">\n");
      out.write("                    <b style=\"font-size: 40px;color: #000000\">SignUp </b>\n");
      out.write("                    <span class=\"sclose\">&times;</span>\n");
      out.write("                </p>   \n");
      out.write("                <form action=\"RegistrationTask\" method=\"post\">\n");
      out.write("                    <div style=\"padding: 50px\">\n");
      out.write("                        <label  style=\"font-size: 20px\"><b>Username</b></label><br>\n");
      out.write("                        <input class=\"input\" type=\"text\" name=\"uname\" placeholder=\"Enter Username\" required>\n");
      out.write("                        <br>\n");
      out.write("                        <label  style=\"font-size: 20px\"><b>Email</b></label><br>\n");
      out.write("                        <input class=\"input\" type=\"email\" name=\"email\" id=\"regEmail\" placeholder=\"Enter Email\" onkeyup=\"checkemail()\" required>\n");
      out.write("                        <br>\n");
      out.write("                        <label  style=\"font-size: 20px\"><b>Password</b></label><br>\n");
      out.write("                        <input class=\"input\" type=\"password\" name=\"pass\" placeholder=\"Enter Passwrd\" id=\"pass\" onkeyup=\"check_pass()\" required>\n");
      out.write("                        <br>\n");
      out.write("                        <label  style=\"font-size: 20px\"><b>Reenter Password</b></label><br>\n");
      out.write("                        <input class=\"input\" type=\"password\" name=\"rpass\" placeholder=\"ReEnter Passwrd\" id=\"rpass\" onkeyup=\"check_pass()\" required>\n");
      out.write("                        <br> <span id='message'></span>  <br>\n");
      out.write("                        <label  style=\"font-size: 20px\"><b>Mobile</b></label><br>\n");
      out.write("                        <input class=\"input\" type=\"text\" name=\"mob\" placeholder=\"Enter Mobile Number\" required>\n");
      out.write("                        <br><br>\n");
      out.write("                        <button class=\"button\" type=\"submit\" id=\"submit\">Register</button>\n");
      out.write("                        <!--<input type=\"submit\" class=\"input\" value=\"Register\">-->\n");
      out.write("                        <br>\n");
      out.write("                        <p style=\"text-align: center;\">already registered?<input type=\"button\" id=\"reg_lgnbtn\" value=\"Login\"> </p>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                </form> \n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("            var smodal=document.getElementById('smodal');\n");
      out.write("            \n");
      out.write("            var btn=document.getElementById('sgnbtn');\n");
      out.write("            var lgn_regbtn=document.getElementById('lgn_regbtn');\n");
      out.write("            var span = document.getElementsByClassName(\"sclose\")[0];\n");
      out.write("            \n");
      out.write("            var lmodal=document.getElementById('lmodal');\n");
      out.write("            \n");
      out.write("            btn.onclick=function(){\n");
      out.write("                smodal.style.display=\"block\";\n");
      out.write("            }\n");
      out.write("            lgn_regbtn.onclick=function(){\n");
      out.write("                lmodal.style.display=\"none\";\n");
      out.write("                smodal.style.display=\"block\";\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            var reg_lgnbtn=document.getElementById('reg_lgnbtn');\n");
      out.write("            reg_lgnbtn.onclick=function(){\n");
      out.write("                smodal.style.display=\"none\";\n");
      out.write("                lmodal.style.display=\"block\";\n");
      out.write("            }\n");
      out.write("            span.onclick=function(){\n");
      out.write("                smodal.style.display=\"none\";\n");
      out.write("            }\n");
      out.write("           // document.write(lmodal);\n");
      out.write("            \n");
      out.write("            window.onclick = function(event) {\n");
      out.write("            if (event.target === smodal) {\n");
      out.write("                smodal.style.display = \"none\";\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("           // var checkemail = function() {\n");
      out.write("            function checkemail()\n");
      out.write("            {\n");
      out.write("                //alert(\"u are ready to book slots\");\n");
      out.write("                $(document).ready(function(){\n");
      out.write("                    \n");
      out.write("                    var x=$(\"#regEmail\").val();\n");
      out.write("                    //alert(\"@@@@@@@@@@@@@@@@@@@@@@@@@\");\n");
      out.write("                    $.ajax({\n");
      out.write("                        type: \"GET\",           \n");
      out.write("                        data: 'emailCheck='+x,\n");
      out.write("                        url: \"http://localhost:8080/Beauty_Parlour/RepeatEmail\",\n");
      out.write("                        success:function(content){\n");
      out.write("                            //alert(\"+\"+content+\"+\");\n");
      out.write("                                \n");
      out.write("                            if(content.charAt(0) == 1){\n");
      out.write("                                document.getElementById('submit').disabled = true;\n");
      out.write("                                document.getElementById('submit').style.opacity = 0.6;\n");
      out.write("                                alert(\"account alredy exists\");\n");
      out.write("                            }\n");
      out.write("                            if(content.charAt(0) == 0){\n");
      out.write("                                document.getElementById('submit').disabled = false;\n");
      out.write("                                document.getElementById('submit').style.opacity = 1;\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                    });           \n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            var check_pass = function() {\n");
      out.write("                if (document.getElementById('pass').value ==\n");
      out.write("                    document.getElementById('rpass').value) {\n");
      out.write("                    document.getElementById('message').style.color = 'green';\n");
      out.write("                    document.getElementById('message').innerHTML = 'matching';\n");
      out.write("                    document.getElementById('submit').disabled = false;\n");
      out.write("                    document.getElementById('submit').style.opacity = 1;\n");
      out.write("                } else {\n");
      out.write("                    document.getElementById('message').style.color = 'red';\n");
      out.write("                    document.getElementById('message').innerHTML = 'not matching';\n");
      out.write("                    document.getElementById('submit').disabled = true;\n");
      out.write("                    document.getElementById('submit').style.opacity = 0.6;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("           </script> \n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function(){\n");
      out.write("                //alert(\"testing\");\n");
      out.write("                //lmodal.style.display=\"block\";\n");
      out.write("                ");
 
                String last=(String)session.getAttribute("lastpage");
                //session.setAttribute("lastpage", null);
                if(last != null){
                
      out.write("\n");
      out.write("                    var lmodal=document.getElementById('lmodal');\n");
      out.write("                    \n");
      out.write("                    //var btn=document.getElementById('serbtn');\n");
      out.write("                    \n");
      out.write("                    var span = document.getElementsByClassName(\"close\")[0];\n");
      out.write("                    \n");
      out.write("                    lmodal.style.display=\"block\";\n");
      out.write("                    \n");
      out.write("                    span.onclick=function(){\n");
      out.write("                        lmodal.style.display=\"none\";\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                    window.onclick = function(event) {\n");
      out.write("                        if (event.target === lmodal) {\n");
      out.write("                            lmodal.style.display = \"none\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                \n");
      out.write("                ");
 } 
      out.write("\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html> \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
