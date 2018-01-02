/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cart;

import org.json.simple.JSONArray;

/**
 *
 * @author Sony
 */
public interface Addcartint {
    
    void addtocart(Cart c);
    public void deleteCate( String c_id);
    JSONArray getAll();
}
