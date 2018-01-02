/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Client;

import java.util.List;

/**
 *
 * @author Sony
 */
interface ClientDoa {
    public Client addClient(Client c);
    public void deleteClient(String email);
    public void updateClient(Client c);
    public void getClient(int ClientId);
    public List<Client> getAllClient();    
}
