package com.seed.model;

import jakarta.persistence.*;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String username;
    private String password;

    @Lob
    @Column(columnDefinition = "LONGBLOB")
    private byte[] image;   
    
    public User() {}

    public int getId() { 
    	return id; 
    }
    public void setId(int id) { 
    	this.id = id; 
    }

    public String getUsername() { 
    	return username; 
    }
    public void setUsername(String username) { 
    	this.username = username; 
    }

    public String getPassword() { 
    	return password; 
    }
    public void setPassword(String password) { 
    	this.password = password; 
    }

    public byte[] getImage() { 
    	return image; 
    }
    public void setImage(byte[] image) { 
    	this.image = image; 
    }
}