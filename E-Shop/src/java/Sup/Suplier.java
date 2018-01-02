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
public class Suplier {
    String companyname,email,password,mobile,pickcode,companypan,gstnum;

    public Suplier(){
    
    }
    
    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
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

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getPickcode() {
        return pickcode;
    }

    public void setPickcode(String pickcode) {
        this.pickcode = pickcode;
    }

    public String getCompanypan() {
        return companypan;
    }

    public void setCompanypan(String companypan) {
        this.companypan = companypan;
    }

    public String getGstnum() {
        return gstnum;
    }

    public void setGstnum(String gstnum) {
        this.gstnum = gstnum;
    }
    
     public String getJSONString(){
    String j="";
    JSONObject js=new JSONObject();
      js.put("company_name",this.getCompanyname());
        js.put("email",this.getEmail());
        js.put("password",this.getPassword());
	js.put("mobile",this.getMobile());
	js.put("pickup_code",this.getPickcode());
	js.put("company_pan",this.getCompanypan());
	js.put("gst_num",this.getGstnum());
	
    j=js.toJSONString();
    return j;
}
    
    public JSONObject getJSONOject(){
    JSONObject retval =new JSONObject();
    
      retval.put("company_name",this.getCompanyname());
       retval.put("email",this.getEmail());
        retval.put("password",this.getPassword());
	retval.put("mobile",this.getMobile());
	retval.put("pickup_code",this.getPickcode());
	retval.put("company_pan",this.getCompanypan());
	retval.put("gst_num",this.getGstnum());
	
    return retval;
}
  
    
}
