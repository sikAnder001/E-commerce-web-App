/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Client;

import java.util.ArrayList;

/**
 *
 * @author Sony
 */
public interface loginin {
    public void set(String username,String password);
    public String[] get();
    public ArrayList<String> loginfinddata(String[] ab);
}
