package Modéle;
import Modéle.Produit;
public class Commande {
    private String id;
    private  Produit client;
    private String nbrproduits;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    
    public String getNbrproduits() {
        return nbrproduits;
    }

    public void setNbrproduits(String nbrproduits) {
        this.nbrproduits = nbrproduits;
    }

    public Produit getClient() {
        return client;
    }

    public void setClient( Produit  client) {
        this.client = client;
    }

    public String toString() {
        String clientInfo = getClient().getNom() + " " + getClient().getPrenom();
        return this.getId() + " " + clientInfo + " " + this.getNbrproduits() + "\n";
    }

}
