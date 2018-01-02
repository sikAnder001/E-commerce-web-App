/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Product;

/**
 *
 * @author Sony
 */
    
import org.json.simple.JSONArray;

public interface ProductDaoint {

     
    public Product addProduct(Product p);
    public void deleteProduct(String p_id);
    public JSONArray findOne(String p_id);
    public JSONArray findAll();
    
    public void approveProduct(String p_id); 
   
    public void rejectProduct(String p_id);

    public void updateProduct(Product p);
    
}