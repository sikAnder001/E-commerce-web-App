/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cart;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import org.bson.types.ObjectId;
import org.json.simple.JSONArray;

/**
 *
 * @author Sony
 */
public class Addcartimp implements Addcartint{

     MongoClient mc=new MongoClient("localhost",27017);
    DB db= mc.getDB("ABHI");
     DBCollection table=db.getCollection("Cart");
    
    @Override
    public void addtocart(Cart c) {
     BasicDBObject o = new BasicDBObject();
            o.append("c_photo",c.getPhoto()).append("c_brand",c.getBrand()).append("c_name",c.getName()).append("c_price",c.getPrice()).append("c_supplier",c.getSupplier()).append("c_desc",c.getDescription()).append("c_email",c.getCustemail());
            table.insert(o);       
         
    }

    @Override
    public void deleteCate(String c_id) {
 BasicDBObject query=new BasicDBObject();
        query.put("_id",new ObjectId(c_id));
        table.remove(query);
   
    }
    @Override
    public JSONArray getAll() {
   midc s=new midc();
        JSONArray data=new JSONArray();
        
        DBCursor cursor=table.find();
        while (cursor.hasNext()) {
            DBObject obj = cursor.next();
        s.set((String)obj.get("_id").toString(),(String)obj.get("c_photo"),(String)obj.get("c_brand"), (String)obj.get("c_name"), (String)obj.get("c_price"),(String)obj.get("c_supplier"),(String) obj.get("c_desc"),(String) obj.get("c_email"));
          
        data.add(s.get1());
        }
    return data;
    }
 
    
}
