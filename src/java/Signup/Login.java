/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Signup;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author aravind
 */
public class Login extends HttpServlet {

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
            
        
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
      
        
        try
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/LISA", "lisa", "lisa");
       
          PreparedStatement ps=con.prepareStatement("select * from signup where email=? and pass=?");
            
          ps.setString(1,email);
          ps.setString(2, pass);
          
          
          ResultSet rs=ps.executeQuery();
          
          
          if(rs.next())
          {
                try
                    {
    PreparedStatement pr=con.prepareStatement("select * from regi where email=?");

                pr.setString(1,email);
                
                 ResultSet rr=pr.executeQuery();
                 
                 if(rr.next())
                 {
                     String fname=rr.getString(1);
                   String lname=rr.getString(2);
                     String gender=rr.getString(3);
                     String mstatus=rr.getString(4);
                     String mail=rr.getString(5);
                     String phno=rr.getString(6);
                     String dob=rr.getString(7);
                     String bgroup=rr.getString(8);
                     String acard=rr.getString(9);
                     String vnum=rr.getString(10);
                     String dlnum=rr.getString(11);
                     String dlexp=rr.getString(12);
                     String addr=rr.getString(13);
                     String ec1=rr.getString(14);
                     String ec2=rr.getString(15);
                     String ec3=rr.getString(16);
                     String eaddr=rr.getString(17);
                     String addr2=rr.getString(18);
                     String addr3=rr.getString(19);
                     String addr4=rr.getString(20);
                     String eaddr2=rr.getString(21);
                     String eaddr3=rr.getString(22);
                     
                     
                     
                     
              //    response.sendRedirect("profile.jsp?fname="+fname+"&lname="+lname+"");
                     
                     
                     
                                         
           response.sendRedirect("profileupdate.jsp?fname="+fname+"&lname="+lname+
                    "&gender="+gender+"&mstatus="+mstatus+"&mail="+mail+
                    "&phno="+phno+"&dob="+dob+"&bgroup="+bgroup+
                    "&acard="+acard+"&vnum="+vnum+"&dlnum="+dlnum+"&dlexp="+dlexp+
                    "&addr="+addr+"&ec1="+ec1+"&ec2="+ec2+"&ec3="+ec3+
                    "&eaddr="+eaddr+"&addr2="+addr2+"&addr3="+addr3+
                    "&addr4="+addr4+"&eaddr2="+eaddr2+"&eaddr3="+eaddr3+""); 
                 }
                 else
                 {
                       response.sendRedirect("profile.jsp");
                 }
                 
                    }
            catch(Exception e)
                    {
                    }
          }
          else
          {
              response.sendRedirect("index.jsp");
          }
         
}
        catch(Exception e)
        {
            
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
