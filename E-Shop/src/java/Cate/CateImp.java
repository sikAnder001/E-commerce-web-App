/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cate;

import org.json.simple.JSONArray;

/**
 *
 * @author Sony
 */
public interface CateImp {
    public String addCate( Cate c );
    public void deleteCate( String CateId );
    public void updateCate( Cate c );
    
    public Cate getCate( String CateId );
    public JSONArray getAllCate();
   
}
