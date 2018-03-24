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
import com.mongodb.MongoClientURI;
import java.util.ArrayList;

/**
 *
 * @author Sony
 */
public class loginimp1 implements loginin {
Client c=new Client();
   

   MongoClientURI uri=new MongoClientURI("mongodb://hr:hr@ds135812.mlab.com:35812/sikanderdb");
    MongoClient mc=new MongoClient(uri);
    DBCollection table= mc.getDB("sikanderdb").getCollection("sikander");
     
@Override
    public void set(String email, String password) {
     c.setEmail(email);
     c.setPassword(password);
     }

    @Override
    public String[] get() {
      String[] up=new String[2];
       up[0]=c.getEmail();
       up[1]=c.getPassword();
        return up;
    }
    
     public ArrayList<String> loginfinddata(String[] a){
       ArrayList<String> status=new ArrayList<String>();
      String up[]=a;
      //login.get();
      //String up[]=new String[2];
      //up[0]=a;up[1]=b;
        DBCursor cursor=table.find();
        while(cursor.hasNext()){
           DBObject object=cursor.next();
           if(up[0].equals(object.get("email")) && up[1].equals(object.get("password"))){
              status.add("ok");
              System.out.println("ho rha hai "+object.get("username"));
              status.add((String)( object.get("username")));
              status.add((String)( object.get("email")));
           }
           
            
       }
        return status;
    }
   
    
}
