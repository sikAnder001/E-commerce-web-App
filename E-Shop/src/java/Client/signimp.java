/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Client;


import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import java.util.ArrayList;


public class signimp {

Client s=new Client();
 MongoClient mc=new MongoClient("localhost",27017);
    DBCollection table= mc.getDB("ABHI").getCollection("Sikander");

    public void set(String email) {
        s.setEmail(email);
    }

    public String get() {
      String up="";
       up=s.getEmail();
        return up;
 }


    public String signfinddata(String ab) {
    
           String status="";
      String up=ab;
      //login.get();
      //String up[]=new String[2];
      //up[0]=a;up[1]=b;
        DBCursor cursor=table.find();
        while(cursor.hasNext()){
           DBObject object=cursor.next();
           if(up.equals(object.get("email"))){
             status=(String) object.get("email");
           }
       }
        return status;
    }

    
}
