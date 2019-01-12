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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Apoorva Dabhere
 */
public class bookedslots extends HttpServlet {

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
            out.println("<title>Servlet bookedslots</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet bookedslots at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
            String indate=request.getParameter("inpdate");
            //out.println("hello");
            try{
                Connection con=sqlConnection.getConnectionn();

                String sql="select * from salonbookings where date=?";
                PreparedStatement ps=con.prepareStatement(sql);
            
                //out.print(indate);
                ps.setString(1, indate);
                ResultSet rs=ps.executeQuery();
                int a[]=new int[23];
                
                for(int k=0;k<23;k++)
                    {
                        a[k]=0;
                    }
                
                //out.println(ps);
                //out.println(rs.getRow());
               // out.print("@@@@@@@");
                if(rs.next()){
                   //out.print("#########");
                   rs.previous();
                    while(rs.next())
                    {
                        a[Integer.parseInt(rs.getString(6))-1]=1;
                    }
                    for(int k=0;k<22;k++)
                    {
                        out.print(""+a[k]);
                    }
                    //out.println("hello "+a[0]+"  "+a[1]+"  "+a[2]+"  "+a[3]);
                    
                        
                    
                }
                else{
                    for(int k=0;k<22;k++)
                    {
                        out.print(""+a[k]);
                    }
                    
                   /* out.println("<html>");
                    out.println("<head>");
                    out.println("<title>Servlet BookTask</title>");            
                    out.println("</head>");
                    out.println("<body>");
                    out.println("<script type='text/javascript'>");
                   // out.println("alert('all the slots are booked');");
                   // response.sendRedirect("services.jsp");
                    out.println("</script>");
                    out.println("</body>");
                    out.println("</html>");*/
                }
                
                String sql2="select * from salontime";
                    PreparedStatement ps2=con.prepareStatement(sql2);
            
                    ResultSet rs2=ps2.executeQuery();
                    String[] b=new String[23];
                    int i=0;
                    while(rs2.next()){
                        b[i]=rs2.getString(2);
                        i++;
                    }
                    for(int k=0;k<22;k++)
                    {
                        out.print(""+b[k]);
                    }
           }
           catch(Exception e)
           {
               out.println("catch executed  "+e);
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
