/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cate;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import java.util.List;
import org.bson.types.Binary;
import org.bson.types.ObjectId;
import org.json.simple.JSONArray;

/**
 *
 * @author Sony
 */

public class CateDao implements CateImp{

      MongoClient mc=new MongoClient("localhost",27017);
    DB db= mc.getDB("ABHI");
     DBCollection table=db.getCollection("Category");

    @Override
    public String addCate(Cate c) {
        BasicDBObject o = new BasicDBObject();
        o.append("cat_name",c.getCatname()).append("cat_date", c.getCatedate());
        
         
        DBCursor cursor=table.find();
        String status=null;
        int count=0;
        while (cursor.hasNext()) {
            DBObject obj = cursor.next();
            
        if(c.getCatname().equals(obj.get("cat_name")))
        {
            count++;
        }
        }
        if(count==0){
            table.insert(o);
            status="done";
        }else{
        status="exist";
        }
        return status;
}

    @Override
    public void deleteCate(String CateId) {
        BasicDBObject query=new BasicDBObject();
        query.put("_id",new ObjectId(CateId));
        table.remove(query);
    }

    @Override
    public void updateCate(Cate c) {
    
    }

    @Override
    public Cate getCate(String CateId) {
  return null;
        
    }

    @Override
    public JSONArray getAllCate() {
     midcate s=new midcate();
        JSONArray data=new JSONArray();
        
        DBCursor cursor=table.find();
        while (cursor.hasNext()) {
            DBObject obj = cursor.next();
        s.set((String)obj.get("_id").toString(),(String) obj.get("cat_name"),(String) obj.get("cat_date"));
            
        data.add(s.get1());
        }
    return data;    }
    
}
