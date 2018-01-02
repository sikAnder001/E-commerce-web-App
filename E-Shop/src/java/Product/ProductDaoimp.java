/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Product;

import Client.mid;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSDBFile;
import com.mongodb.gridfs.GridFSInputFile;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.bson.types.Binary;
import org.bson.types.ObjectId;
import org.json.simple.JSONArray;

/**
 *
 * @author Sony
 */
public class ProductDaoimp implements ProductDaoint{

    MongoClient mc=new MongoClient("localhost",27017);
    DB db= mc.getDB("ABHI");
     DBCollection table=db.getCollection("ProductImage");
//     DBCollection table1=db.getCollection("ProductDetails");
//     
//    
     @Override
    public Product addProduct(Product p) {
        
            Binary data = new Binary(p.getImg());
            BasicDBObject o = new BasicDBObject();
            o.append("p_photo",data).append("p_imagename",p.getPimgname()).append("p_name",p.getProductname()).append("p_price",p.getProductprice()).append("p_date",p.getProductdate()).append("p_supplier",p.getProductsupplier()).append("p_description",p.getProductdescription()).append("catid",p.getCatid()).append("p_status",p.getStatus());
            table.insert(o);       
        
            return p;
        }
    
public byte[] ret(){
    Product p=new Product();
 byte c[];
    DBObject obj = table.findOne(new BasicDBObject("p_name", "levis jean"));
            String n = (String)obj.get("p_name");
            c = (byte[])obj.get("p_photo");  
            return c;
}
    
    @Override
    public JSONArray findAll() {
        midp s=new midp();
        JSONArray data=new JSONArray();
        
        DBCursor cursor=table.find();
        while (cursor.hasNext()) {
            DBObject obj = cursor.next();
        s.set((String)obj.get("_id").toString(),(byte[])obj.get("p_photo"),(String)obj.get("p_imagename"), (String)obj.get("p_name"), (String)obj.get("p_price"),(String) obj.get("p_date"),(String)obj.get("p_supplier"),(String) obj.get("p_description"),(String) obj.get("catid"),(String) obj.get("p_status"));
            
        data.add(s.get1());
        }
    return data; 
}
 
    public void deleteProduct(String p_id) {
        BasicDBObject query=new BasicDBObject();
        query.put("_id",new ObjectId(p_id));
        table.remove(query);
    }

    @Override
    public JSONArray findOne(String p_id) {
        midp s=new midp();
        JSONArray data=new JSONArray();
        BasicDBObject whereQuery = new BasicDBObject();
        whereQuery.put("_id",new ObjectId(p_id));
        DBCursor cursor = table.find(whereQuery);
        while (cursor.hasNext()) {
            DBObject obj = cursor.next();
            s.set((String)obj.get("_id").toString(),(byte[])obj.get("p_photo"),(String)obj.get("p_imagename"), (String)obj.get("p_name"), (String)obj.get("p_price"),(String) obj.get("p_date"),(String)obj.get("p_supplier"),(String) obj.get("p_description"),(String) obj.get("catid"),(String) obj.get("p_status"));
            
        data.add(s.get1());
        }
    return data; 
    }

    @Override
    public void approveProduct(String p_id) {
    table.update(new BasicDBObject("_id",new ObjectId(p_id)),
                  new BasicDBObject("$set", new BasicDBObject("p_status","Approved")));

    }

    @Override
    public void rejectProduct(String p_id) {
    table.update(new BasicDBObject("_id",new ObjectId(p_id)),
                  new BasicDBObject("$set", new BasicDBObject("p_status","Rejected")));

    }

    @Override
    public void updateProduct(Product p) {
        
    table.update(new BasicDBObject("_id",new ObjectId(p.getProductid())),

        new BasicDBObject("$set", new BasicDBObject("p_imagename",p.getPimgname()).append("p_name",p.getProductname()).append("p_price",p.getProductprice()).append("p_description",p.getProductdescription())));

    }

}
