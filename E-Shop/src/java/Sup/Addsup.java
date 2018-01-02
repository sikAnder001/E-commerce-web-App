/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Sup;

import Client.signimp;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sony
 */

public class Addsup extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    SuplierDao sdao=new SuplierDao();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Addsup</title>");            
            out.println("</head>");
            out.println("<body>");
           
            String detail[]=request.getParameterValues("supsign");
            
            String compny=detail[0];
            String email=detail[1];
            
            signimp login= new signimp();
            signimp3 login2= new signimp3();
            
            String result="";
            login.set(email);
            String ab=login.get();
            System.out.println("gya");
            System.out.println("maal aya");
            result=login.signfinddata(ab);
            
            
            String result2="";
            login2.set(compny,email);
            String[] ab2=login2.get();
            System.out.println("result2");
            System.out.println("aa gya");
            result2=login2.signfinddata(ab2);
            
            
            out.println(result2.contains(email)+"=="+result2.contains(compny)+"==="+result2);
            
            
            if(result.equals(email)||result2.contains(email)||result2.contains(compny)){
            out.println("Exist");
            }else{
               Suplier s=new Suplier();
          
               for(int i=0;i<detail.length;i++){
            switch(i){
            case 0: s.setCompanyname(detail[i]); break;
            case 1: s.setEmail(detail[i]); break;
            case 2: s.setPassword(detail[i]); break;
            case 3: s.setMobile(detail[i]); break;
            case 4: s.setPickcode(detail[i]); break;
            case 5: s.setCompanypan(detail[i]); break;
            case 6: s.setGstnum(detail[i]); break;
            
            }
            }
            sdao.addSuplier(s);
            out.println("Successful");
            
         }            
            
            out.println("</body>");
            out.println("</html>");
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
