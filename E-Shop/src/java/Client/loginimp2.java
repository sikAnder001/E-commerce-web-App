/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Client;

import Sup.Suplier;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import java.util.ArrayList;

/**
 *
 * @author Sony
 */
public class loginimp2 implements loginin{
Suplier s=new Suplier();
 MongoClient mc=new MongoClient("localhost",27017);
    DBCollection table= mc.getDB("ABHI").getCollection("Suplier");


    @Override
    public void set(String email, String password) {
        s.setEmail(email);
     s.setPassword(password);
    }

    @Override
    public String[] get() {
      String[] up=new String[2];
       up[0]=s.getEmail();
       up[1]=s.getPassword();
        return up;

    
    }

    @Override
    public ArrayList<String> loginfinddata(String[] ab) {
    
           ArrayList<String> status=new ArrayList<String>();
      String up[]=ab;
      //login.get();
      //String up[]=new String[2];
      //up[0]=a;up[1]=b;
        DBCursor cursor=table.find();
        while(cursor.hasNext()){
           DBObject object=cursor.next();
           if(up[0].equals(object.get("email")) && up[1].equals(object.get("password"))){
              status.add("suplier");
             System.out.println("ho rha hai "+object.get("company_name"));
              status.add((String) object.get("company_name"));
             status.add((String) object.get("email"));
           
           }
           
            
       }
        return status;
    }

}
