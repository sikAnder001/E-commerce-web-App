/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Cart;

import Product.ProductDaoimp;
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
public class Addcart extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    ProductDaoimp pc=new ProductDaoimp();
    Addcartimp ac=new Addcartimp();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Addcart</title>");            
            out.println("</head>");
            out.println("<body>");
           
            out.println("<h1>chala<h1>");
           
            HttpSession session=request.getSession(false);
            String sesi = (String) session.getAttribute("uname").toString();
            ArrayList<String> arr=new Gson().fromJson(sesi,ArrayList.class);
            System.out.println("this sesi"+arr.get(1));
            
            
            if(request.getParameter("action")!=null){
            
            String action=request.getParameter("action");
            String p_id=request.getParameter("id");
            Cart c=new Cart();
            
            if(action.equals("add")){
            JSONArray ja= pc.findOne(p_id);
            JSONObject data=(JSONObject)ja.get(0);
            
            c.setBrand((String) data.get("p_imagename"));
            c.setSupplier((String) data.get("p_supplier"));
            c.setCustemail((String)(arr.get(1)));
            c.setName((String) data.get("p_name"));
            c.setDescription((String) data.get("p_description"));
            c.setPhoto((String) data.get("p_photo"));
            c.setPrice((String) data.get("p_price"));
            ac.addtocart(c);
            }
            if(action.equals("delete")){
            ac.deleteCate(p_id);
            }
            else{response.sendRedirect("sessionend.jsp");
            }
            }

             JSONArray jk=(JSONArray)ac.getAll();
                  
            out.println(jk);
            
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
