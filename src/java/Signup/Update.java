/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Signup;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aravind
 */
public class Update extends HttpServlet {

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
           String fname=request.getParameter("fname");
        String lname=request.getParameter("lname");
         String gender=request.getParameter("gender");
        String mats=request.getParameter("mats");
         String email=request.getParameter("email");
        String phno=request.getParameter("phno");
         String dob=request.getParameter("dob");
        String blood=request.getParameter("blood");
        String acard=request.getParameter("acard");
        String vnum=request.getParameter("vnum");
         String dlnum=request.getParameter("dlnum");
        String dlex=request.getParameter("dlex");
         String addr1=request.getParameter("addr1");
          String addr2=request.getParameter("addr2");
           String addr3=request.getParameter("addr3");
         String addr4=request.getParameter("addr4");   
        String ec1=request.getParameter("ec1");
        String ec2=request.getParameter("ec2");
        String ec3=request.getParameter("ec3");
         String eaddr1=request.getParameter("eaddr1");
        String eaddr2=request.getParameter("eaddr2");
         String eaddr3=request.getParameter("eaddr3");
         
     
      
        
        try
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/LISA", "lisa", "lisa");
       
            String qry="update regi set fhame=?, lname=?, gender=?, mstatus=?,  phno=?, dob=?, bloodgrp=?, acard=?, vnumber=?, dlnumber=?, dlempdate=?, addr=?, ec1=?, ec2=?, ec3=?, eaddr=?, addr2=?, addr3=?, addr4=?, eaddr2=?, eaddr3=? where email=? ";
          PreparedStatement ps=con.prepareStatement(qry);
            
          ps.setString(1,fname);
          ps.setString(2,lname);
         /* ps.setString(3,gender);
          ps.setString(4,mats);
          ps.setString(5,phno);
          ps.setString(6,dob);
          ps.setString(7,blood);
          ps.setString(8,acard);
          ps.setString(9,vnum);
          ps.setString(10,dlnum);
          ps.setString(11,dlex);
          ps.setString(12,addr1);
          ps.setString(13,ec1);
          ps.setString(14,ec2);
          ps.setString(15,ec3);
          ps.setString(16,eaddr1);
          ps.setString(17,addr2);
          ps.setString(18,addr3);
          ps.setString(19,addr4);
          ps.setString(20,eaddr2);
          ps.setString(21,eaddr3);*/
          ps.setString(22,email);
                   
          
        ps.executeUpdate();
          
     
            response.sendRedirect("profile.jsp");
        }
        catch(Exception e)
        {
            System.out.println(e);
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
