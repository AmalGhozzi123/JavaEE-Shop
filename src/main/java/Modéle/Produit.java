package Modéle;

public class Produit {
	private String id;
	private String nom;
	private String prenom;
	private String numtlp;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getNumtlp() {
		return numtlp;
	}
	public void setNumtlp(String numtlp) {
		this.numtlp = numtlp;
	}
	
public String confirmation()

{
	return this.getNom();
}
public String toString()
{
	return this.getId()+" "+this.getNom()+" "+this.getPrenom()+" "+this.getNumtlp()+"\n";
}
}
