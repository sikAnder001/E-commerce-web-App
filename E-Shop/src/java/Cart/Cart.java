/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cart;

import org.json.simple.JSONObject;

/**
 *
 * @author Sony
 */
class Cart {
    String  id,photo,name,brand,custemail,supplier,price,description;

    public String getDescription() {
        return description;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getCustemail() {
        return custemail;
    }

    public void setCustemail(String custemail) {
        this.custemail = custemail;
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    
      public String getJSONString(){
    String j="";
    JSONObject js=new JSONObject();
    js.put("c_id",id);
    js.put("c_photo",photo);
    js.put("c_brand",this.brand);
    js.put("c_name",this.name);
    js.put("c_price",this.price);
    js.put("c_supplier",this.supplier);
    js.put("c_desc",this.description);
   js.put("c_email",this.custemail);
   
    j=js.toJSONString();
    return j;
}
    
    public JSONObject getJSONOject(){
    JSONObject js =new JSONObject();
    js.put("c_id",id);
    js.put("c_photo",photo);
    js.put("c_brand",this.brand);
    js.put("c_name",this.name);
    js.put("c_price",this.price);
    js.put("c_supplier",this.supplier);
    js.put("c_desc",this.description);
   js.put("c_email",this.custemail);
   
    return js;
}


}
