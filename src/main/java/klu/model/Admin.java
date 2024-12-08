package klu.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "admin") // Optional, specifies the table name
public class Admin {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

	@Column(name="username")
	long username;
	

	@Column(name = "password")
	String password;
	
	

	public long getUsername() {
		return username;
	}



	public void setUsername(long username) {
		this.username = username;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Admin [username=" + username + ", password=" + password + "]";
	}




	
	

	

}
