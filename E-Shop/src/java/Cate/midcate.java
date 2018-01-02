/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cate;

import org.json.simple.JSONObject;
/**
 *
 * @author Sony
 */
public class midcate {
Cate c=new Cate();

    public void set(String catid,String catname,String catedate) {
    
     c.setCatid(catid);
     c.setCatname(catname);
     c.setCatedate(catedate);
      
    }

    public JSONObject get1() {
        JSONObject object=new JSONObject();
        object.putAll(c.getJSONOject());
        return object;
    }

    
}
