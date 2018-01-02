/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Sup;

import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import java.util.ArrayList;

/**
 *
 * @author Sony
 */
class signimp3 {
    
    Suplier s=new Suplier();
 MongoClient mc=new MongoClient("localhost",27017);
    DBCollection table= mc.getDB("ABHI").getCollection("Suplier");

public void set(String compny, String email) {
        s.setEmail(email);
     s.setCompanyname(compny);
    }

    public String[] get() {
      String[] up=new String[2];
       up[0]=s.getEmail();
       up[1]=s.getCompanyname();
        return up;
   }
    
    public String signfinddata(String[] ab) {
    
      String status="";
      String up[]=ab;
      //login.get();
      //String up[]=new String[2];
      //up[0]=a;up[1]=b;
        DBCursor cursor=table.find();
        while(cursor.hasNext()){
           DBObject object=cursor.next();
           if(up[0].equals(object.get("email"))|| up[1].equals(object.get("company_name"))){
             System.out.println(object.get("email")+"="+object.get("company_name"));
            status=object.get("email")+"="+object.get("company_name");
           }
       }
        return status;
    }

    
    
}
