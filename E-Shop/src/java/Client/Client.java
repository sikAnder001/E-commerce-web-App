/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Client;

import org.json.simple.JSONObject;

/**
 *
 * @author Sony
 */
class Client {
    
    private String username;
    private String email;
    private String password;

    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

   public Client(){
   
   }
   public String getJSONString(){
    String j="";
    JSONObject js=new JSONObject();
    
    js.put("username",this.username);
    js.put("email",this.email);
    js.put("password",this.password);
    
    j=js.toJSONString();
    return j;
}
    
    public JSONObject getJSONOject(){
    JSONObject retval =new JSONObject();
    
    retval.put("usernme",this.username);
    retval.put("email",this.email);
    retval.put("password",this.password);
    
    return retval;
}
  
}
