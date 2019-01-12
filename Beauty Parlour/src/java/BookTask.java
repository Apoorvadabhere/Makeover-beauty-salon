/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Apoorva Dabhere
 */
public class BookTask extends HttpServlet {

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
            /*out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BookTask</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BookTask at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");*/
            String service=request.getParameter("services");
            String date=request.getParameter("date");
            String timeslot=request.getParameter("slot");
            
            HttpSession session=request.getSession();
            String emaill=(String)session.getAttribute("email");
            String usern=(String)session.getAttribute("uname");
            
            SimpleDateFormat sd = new SimpleDateFormat("yyyy.MM.dd G 'at' HH:mm:ss z");
            Date bdate = new Date();
            // TODO: Avoid using the abbreviations when fetching time zones.
            // Use the full Olson zone ID instead.
            sd.setTimeZone(TimeZone.getTimeZone("IST"));
            //out.print(sd.format(bdate));
            String booktime = sd.format(bdate);
            String bookid=usern+booktime;
            //out.print(name);
            try{
                Connection con=sqlConnection.getConnectionn();
                
                String sql="insert into salonbookings values (?,?,?,?,?,?,?)";
               // out.print(""+usern);
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, bookid);
                ps.setString(2, usern);
                ps.setString(3, emaill);
                ps.setString(4, service);
                ps.setString(5, date);
                ps.setString(6, timeslot);
                ps.setString(7, booktime);
                
                int i=ps.executeUpdate();
                
                if(i>0)
                {
                    /*out.println("<html>");
                    out.println("<head>");
                    out.println("<title>Servlet BookTask</title>");            
                    out.println("</head>");
                    out.println("<body>");
                    out.println("<script type='text/javascript'>");
                    out.println("alert('booked');");
                    response.sendRedirect("services.jsp");
                    out.println("</script>");
                    out.println("</body>");
                    out.println("</html>");
                    */
                    session.setAttribute("AlertBook", "Yes");
                    response.sendRedirect("services.jsp");
                }
                else{
                    session.setAttribute("AlertBook", "No");
                    response.sendRedirect("services.jsp");
                }
            }    
            catch(Exception e){
                out.print("not booked"+e);
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
