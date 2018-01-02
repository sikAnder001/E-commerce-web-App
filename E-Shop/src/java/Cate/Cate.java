/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cate;

import org.json.simple.JSONObject;

/**
 *
 * @author Sikander
 */
public class Cate {
    private String catid,catname,catedate;

    

    public Cate(){
    }
    
    public String getCatid() {
        return catid;
    }

    public void setCatid(String catid) {
        this.catid = catid;
    }

    public String getCatname() {
        return catname;
    }

    public void setCatname(String catname) {
        this.catname = catname;
    }

    public String getCatedate() {
        return catedate;
    }

    public void setCatedate(String catedate) {
        this.catedate = catedate;
    }
    
       public String getJSONString(){
    String j="";
    JSONObject js=new JSONObject();
    
    js.put("cat_id",this.catid);
    js.put("cat_name",this.catname);
    js.put("cat_date",this.catedate);
    
    j=js.toJSONString();
    return j;
}
    
    public JSONObject getJSONOject(){
    JSONObject retval =new JSONObject();
   retval.put("cat_id",this.catid);
    retval.put("cat_name",this.catname);
    retval.put("cat_date",this.catedate);
   
    return retval;
}

}
