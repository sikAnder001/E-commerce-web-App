/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Client;

import org.bson.types.ObjectId;
import org.json.simple.JSONObject;

/**
 *
 * @author Sony
 */
public class mid{ 
Client c=new Client();

    public void set(String username, String email, String password) {
     c.setUsername(username);
     c.setEmail(email);
     c.setPassword(password);
    }

    public JSONObject get1() {
        JSONObject object=new JSONObject();
        object.putAll(c.getJSONOject());
        return object;
    }

}
