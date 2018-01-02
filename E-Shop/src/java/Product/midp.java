/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Product;

import Client.*;
import org.bson.types.ObjectId;
import org.json.simple.JSONObject;

/**
 *
 * @author Sony
 */
public class midp{ 
Product p=new Product();

    public void set(String pid,byte[] pphoto,String pimagename, String pname, String pprice,String pdate,String psupplier,String pdescription,String catid,String status) {
     p.setImg(pphoto);
     p.setPimgname(pimagename);
     p.setProductid(pid);
     p.setProductname(pname);
     p.setProductprice(pprice);
     p.setProductdate(pdate);
     p.setProductsupplier(psupplier);
     p.setProductdescription(pdescription);
     p.setCatid(catid);
     p.setStatus(status);
      
    }

    public JSONObject get1() {
        JSONObject object=new JSONObject();
        object.putAll(p.getJSONOject());
        return object;
    }

}
