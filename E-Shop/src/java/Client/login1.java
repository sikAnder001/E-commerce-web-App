package Client;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonParser;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.simple.JSONArray;


/**
 *
 * @author Sony
// */

//@WebServlet(name = "login1", urlPatterns = {"/login1"})
public class login1 extends HttpServlet {

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
            loginimp1 login=new loginimp1(); 
            loginimp2 login2=new loginimp2(); 
           
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            
            
            
            if(email!=null&& password!=null){
                login.set(email, password);
                String[] ab=login.get();
                System.out.println("maal aya");
                ArrayList<String> status=login.loginfinddata(ab);
            
                login2.set(email, password);
                String[] ab2=login2.get();
                System.out.println("sup aaya");
                ArrayList<String> status2=login2.loginfinddata(ab2);
            
                    if(status.contains("ok") && email.equals("admin@gmail.com")&& password.equals("786")){
                        out.println("admin");
                        status.remove(0);
                        System.out.println(status);
//                        Gson gson=new Gson();
                        String list=new Gson().toJson(status);
//                        JsonArray ja=new JsonParser().parse(list).getAsJsonArray();
                        HttpSession session=request.getSession();
                        session.setAttribute("aname", list);
                        System.out.println(list);
                      }
                    else if(status.contains("ok")){
                        out.println("user");
                        status.remove(0);
                        System.out.println(status);
//                        Gson gson=new Gson();
                        String list=new Gson().toJson(status);
//                        JsonArray ja=new JsonParser().parse(list).getAsJsonArray();
                        HttpSession session=request.getSession();
                        session.setAttribute("uname", list);
                        System.out.println(list);
//                      
                    }else if(status2.contains("suplier")){
                        out.println("suplier");
                        status2.remove(0);
                        System.out.println(status2);
//                        Gson gson=new Gson();
                        String list=new Gson().toJson(status2);
//                        JsonArray ja=new JsonParser().parse(list).getAsJsonArray();
                        HttpSession session=request.getSession();
                        session.setAttribute("sname", list);
                        System.out.println(list);
//                      RequestDispatcher rd=request.getRequestDispatcher("Suplier.jsp");
//                      rd.forward(request, response);
             
                    }else{}
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
