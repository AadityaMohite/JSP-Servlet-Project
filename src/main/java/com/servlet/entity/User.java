package com.servlet.entity;

public class User {
  private  String name;
    private String email;
    private String password;
    private String gender;
    private String city;
    
    public User(String name,String email,String password,String gender,String city){
    	   this.name = name;
    	   this.email = email;
    	   this.password = password;
    	   this.gender = gender;
    	   this.city = city;
    }
    
    public void setname(String name) {
    	  this.name = name;
    }
    
    public void  setemail(String email) {
    	 this.email = email;
    }
    
    public void setpassword(String password) {
    	this.password = password;
    	
    }
    
    public void setgender(String gender) {
    	  this.gender = gender;
    }
    
    public void setcity(String city) {
    	this.city = city;
    }
    
    public String getname() {
    	return name;
    }
    
    public String getemail() {
    	return email;
    }
    public String getpassword() {
    	return password;
    }
    public String getcity() {
    	return city;
    }
    public String getgender() {
    	return gender;
    }
}
