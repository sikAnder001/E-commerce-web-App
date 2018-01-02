/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Product;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 *
 * @author Sony
 */

public class deletep extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    ProductDaoimp pdao=new ProductDaoimp();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet deletep</title>");            
            out.println("</head>");
            out.println("<body>");
    
             out.println("<h2>ander to aa raha h</h2>");
             
            if(request.getParameter("suplier").equals("true")){
            HttpSession session=request.getSession(false);
            String sesi = (String) session.getAttribute("sname").toString();
            ArrayList<String> arr=new Gson().fromJson(sesi,ArrayList.class);
            System.out.println("this sesi"+arr.get(1));
            
                String action=request.getParameter("action");
            
            if(action.equals("delete")){
            String p_id=request.getParameter("p_id");
       
                pdao.deleteProduct(p_id);
           response.sendRedirect("Suplier.jsp");
            
            }
            if(action.equals("update")){
               String p_id=request.getParameter("p_id");
               String p_imgname=request.getParameter("imgname");
               String p_name=request.getParameter("pname");
               String p_price=request.getParameter("pprice");
               String p_desc=request.getParameter("pdesc");
               
               Product p=new Product();
               p.setProductid(p_id);
               p.setPimgname(p_imgname);
               p.setProductname(p_name);
               p.setProductprice(p_price);
               p.setProductdescription(p_desc);
               
               pdao.updateProduct(p);
               System.out.println(p_id+"="+p_imgname+"="+p_name+"="+p_price+"="+p_desc);
            }
            }
           if(request.getParameter("suplier").equals("false")){
            
                 out.println("<h2>ander to aa raha h</h2>");
           
            String action=request.getParameter("action");
            String p_id=request.getParameter("p_id");
       
            if(action.equals("approved")){
             pdao.approveProduct(p_id);
            
            }
            if(action.equals("rejected")){
            pdao.rejectProduct(p_id);
            }
            if(action.equals("delete")){
                pdao.deleteProduct(p_id);
            
            }
            }else{ out.println("<h2>something went wrong plz try again or come back later</h2>");}
            
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
