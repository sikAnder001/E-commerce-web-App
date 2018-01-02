/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Sup;

import org.json.simple.JSONObject;

/**
 *
 * @author Sony
 */
class mids {
 Suplier s=new Suplier();

    public void set(String companyname, String email, String password, String mobile, String pickcode, String companypan, String gstnum) {
      s.setCompanyname(s.getCompanyname());
        s.setEmail(s.getEmail());
        s.setPassword(s.getPassword());
	s.setMobile(s.getMobile());
	s.setPickcode(s.getPickcode());
	s.setCompanypan(s.getCompanypan());
	s.setGstnum(s.getGstnum());
	
    }

    public JSONObject get1() {
        JSONObject object=new JSONObject();
        object.putAll(s.getJSONOject());
        return object;
    }
   
}
