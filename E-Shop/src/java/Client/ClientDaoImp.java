/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Client;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import java.util.ArrayList;
import java.util.List;
import org.bson.Document;
import org.bson.types.ObjectId;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 *
 * @author Sony
 */
class ClientDaoImp implements ClientDoa{
    
    MongoClient mc=new MongoClient("localhost",27017);
    DBCollection table= mc.getDB("ABHI").getCollection("Sikander");
    
    @Override
    public Client addClient(Client c) {
 	BasicDBObject bo=new BasicDBObject();	
        bo.put("username",c.getUsername());
        bo.put("email",c.getEmail());
        bo.put("password",c.getPassword());
	table.insert(bo);
        return c;
    }

    @Override
    public void deleteClient(String email) {
        BasicDBObject query=new BasicDBObject();
        query.put("email", email);
        table.remove(query);
    }

    @Override
    public void updateClient(Client c) 
    {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void getClient(int ClientId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<Client> getAllClient(){
        DBCursor cursor=table.find();
        JSONArray data=new JSONArray();
        mid s=new mid();
        while (cursor.hasNext()) {
            DBObject obj = cursor.next();
            s.set((String) obj.get("username"),(String) obj.get("email"),(String) obj.get("password"));
            data.add(s.get1());
            }
        return  data;
    }

}

