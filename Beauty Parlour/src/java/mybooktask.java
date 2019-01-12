/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Apoorva Dabhere
 */
public class mybooktask extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            HttpSession session=request.getSession();
            String emaill=(String)session.getAttribute("email");
            String usern=(String)session.getAttribute("uname");
            session.setAttribute("lastpage", "mybooktask");
            if(emaill!=null){
                session.setAttribute("lastpage", null);
            
                LocalDateTime date =  LocalDateTime.now();
                String currentdate=date.toString();
                currentdate=currentdate.substring(0,10);
                //out.print(currentdate);
            
                try{
                    Connection con=sqlConnection.getConnectionn();

                    String sql="select * from salonbookings where username=? and date>=?";
                    PreparedStatement ps=con.prepareStatement(sql);
            
                    //out.print(indate);
                    ps.setString(1, usern);
                    ps.setString(2, currentdate);
                    ResultSet rs=ps.executeQuery();
                
            
            
                    out.println("<!DOCTYPE html>");
                    out.println("<html>");
                    out.println("<head>");
                    out.println("<title>mybooktask</title>"); 
                    out.println("<style>");
            
                    out.println("#header{"); 
                    out.println("height: 100px;");
                    out.println("background-color: purple;");
                    out.println("color: white;}");
            
                    out.println("</style>");
                    out.println("</head>");
                    out.println("<body bgcolor='black' style='color : white'>");
                    out.println("<div id='header'><br>");
                    out.println("<h1 align='center'> The Makeover Beauty Salon </h1>");
                    out.println("</div>");
                    //out.println("<h1>Servlet mybooktask at " + request.getContextPath() + "</h1>");
                    out.println("<h1><center>bookings of "+usern+"<center><h1>");
                    if(rs.next()){
                        rs.previous();
                        out.println("<table>");
                        out.println("<tr>");
                        out.println("<td><font size='4'>booking id</font></td>");
                        out.println("<td><font size='4'>service</font></td>");
                        out.println("<td><font size='4'>date</font></td>");
                        out.println("<td><font size='4'>time</font></td>");
                        out.println("</tr>");
                
                        while(rs.next())
                        {
                            String a=rs.getString(1);
                            String b=rs.getString(4);
                            String c=rs.getString(5);
                            String d=rs.getString(6);
                        
                            String sql2="select * from salontime where slotid=?";
                            PreparedStatement ps2=con.prepareStatement(sql2);
                            ps2.setString(1, d);
                            ResultSet rs2=ps2.executeQuery();
                            rs2.next();
                            String e=rs2.getString(2);
                        
                            out.println("<tr>");
                            out.println("<td><font size='4'>"+a+"</font></td>");
                            out.println("<td><font size='4'>"+b+"</font></td>");
                            out.println("<td><font size='4'>"+c+"</font></td>");
                            out.println("<td><font size='4'>"+e+"</font></td>");
                            out.println("</tr>");
                        }
                        out.println("</table>");
                    }
                    else{
                        out.println("<h3>you have no bookings yet</h3 >");
                    
                    }
                    out.println("</body>");
                    out.println("</html>");
                
                }
                catch(Exception e){
                    out.println("catch executed"+e);
                }
            
            }else{
                response.sendRedirect("home.jsp");
            }
        }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
