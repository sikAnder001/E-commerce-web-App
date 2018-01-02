/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Product;

import javax.xml.bind.DatatypeConverter;
import org.json.simple.JSONObject;

/**
 *
 * @author Sony
 */

class Product {
private String productid,productname,productprice,productdate,catid,productsupplier,productdescription,pimgname,status;    

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

public Product(){

}
    public String getPimgname() {
        return pimgname;
    }

    public void setPimgname(String pimgname) {
        this.pimgname = pimgname;
    }

private byte[] img;

    public byte[] getImg() {
        return img;
    }

    public void setImg(byte[] img) {
        this.img = img;
    }

        
    
    public String getProductid() {
        return productid;
    }

    public void setProductid(String productid) {
        this.productid = productid;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getProductprice() {
        return productprice;
    }

    public void setProductprice(String productprice) {
        this.productprice = productprice;
    }

    public String getProductdate() {
        return productdate;
    }

    public void setProductdate(String productdate) {
        this.productdate = productdate;
    }

    public String getCatid() {
        return catid;
    }

    public void setCatid(String catid) {
        this.catid = catid;
    }

    public String getProductsupplier() {
        return productsupplier;
    }

    public void setProductsupplier(String productsupplier) {
        this.productsupplier = productsupplier;
    }

    public String getProductdescription() {
        return productdescription;
    }

    public void setProductdescription(String productdescription) {
        this.productdescription = productdescription;
    }

 public String getJSONString(){
    String j="";
    JSONObject js=new JSONObject();
    String img=DatatypeConverter.printBase64Binary(this.img);
    
    js.put("p_photo",img);
    js.put("p_imagename",this.pimgname);
    js.put("p_id",this.productid);
    js.put("catid",this.catid);
    js.put("p_name",this.productname);
    js.put("p_price",this.productprice);
    js.put("p_date",this.productdate);
    js.put("p_supplier",this.productsupplier);
    js.put("p_description",this.productdescription);
    js.put("p_status",this.status);
    j=js.toJSONString();
    return j;
}
    
    public JSONObject getJSONOject(){
    JSONObject js =new JSONObject();
    String img=DatatypeConverter.printBase64Binary(this.img);
    
    js.put("p_photo",img);
    js.put("p_imagename",this.pimgname);
    js.put("p_id",this.productid);
    js.put("catid",this.catid);
    js.put("p_name",this.productname);
    js.put("p_price",this.productprice);
    js.put("p_date",this.productdate);
    js.put("p_supplier",this.productsupplier);
    js.put("p_description",this.productdescription);
    js.put("p_status",this.status);
    
    return js;
}

   
}
