package Modéle;

public class Utilisateur {
private String login;
private String Password;
public String getLogin() {
	return login;
}
public void setLogin(String login) {
	this.login = login;
}
public String getPassword() {
	return Password;
}
public void setPassword(String password) {
	Password = password;
}
public boolean Vérifier()
{ boolean r=false;
	if((this.login.equalsIgnoreCase("admin")) && (this.Password.equalsIgnoreCase("admin")))

	 //return "Bienvenue "+this.getLogin().toUpperCase();
		r=true;
		
	else
	{
		r=false;
	}
	return r;
}
}

