/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cart;

import org.json.simple.JSONObject;

/**
 *
 * @author Sony
 */
public class midc{ 
Cart c=new Cart();
 
    public void set(String id,String photo,String brand,String name,String price,String supplier,String desc,String email) {
            c.setId(id);
            c.setCustemail(email);
            c.setBrand(brand);
            c.setSupplier(supplier);
            c.setCustemail(email);
            c.setName(name);
            c.setDescription(desc);
            c.setPhoto(photo);
            c.setPrice(price);
             
    }

    public JSONObject get1() {
        JSONObject object=new JSONObject();
        object.putAll(c.getJSONOject());
        return object;
    }

}
