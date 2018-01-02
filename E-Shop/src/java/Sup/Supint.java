/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Sup;

import java.util.List;

/**
 *
 * @author Sony
 */
public interface Supint {
    public Suplier addSuplier(Suplier s);
    public void deleteSuplier(String email);
    public void updateSuplier(Suplier s);
    public void getSuplier(int ClientId);
    public List<Suplier> getAllSuplier();
}
