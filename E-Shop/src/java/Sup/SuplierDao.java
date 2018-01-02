/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Sup;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;
import java.util.List;
import org.json.simple.JSONArray;

/**
 *
 * @author Sony
 */
class SuplierDao implements Supint{

     MongoClient mc=new MongoClient("localhost",27017);
    DBCollection table= mc.getDB("ABHI").getCollection("Suplier");
   
    @Override
    public Suplier addSuplier(Suplier s) {
        
    BasicDBObject bo=new BasicDBObject();	
        bo.put("company_name",s.getCompanyname());
        bo.put("email",s.getEmail());
        bo.put("password",s.getPassword());
	bo.put("mobile",s.getMobile());
	bo.put("pickup_code",s.getPickcode());
	bo.put("company_pan",s.getCompanypan());
	bo.put("gst_num",s.getGstnum());
	
        table.insert(bo);
        return s;
    }

    @Override
    public void deleteSuplier(String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void updateSuplier(Suplier c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void getSuplier(int ClientId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Suplier> getAllSuplier() {
        DBCursor cursor=table.find();
        JSONArray data=new JSONArray();
        mids s=new mids();
        while (cursor.hasNext()) {
            BasicDBObject obj = (BasicDBObject) cursor.next();
            s.set((String) obj.get("company_name"),(String) obj.get("email"),(String) obj.get("password"),(String) obj.get("mobile"),(String) obj.get("pickup_code"),(String) obj.get("company_pan"),(String) obj.get("gst_num"));
            data.add(s.get1());
            }
        return  data;
    }
    

}
