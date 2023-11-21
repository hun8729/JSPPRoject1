package com.crud.bean;

import java.util.Date;

public class MemberVo {
    private int ID;
    private String userID;
    private String userPW;
    private String Name;
    private String Age;
    private String email;
    private String content;
    private Date Regdate;

    public MemberVo() {
    }

    public int getId() {
        return ID;
    }
    public void setId(int id) {
        this.ID = id;
    }
    public String getName() {
        return Name;
    }
    public void setName(String name) {
        this.Name = name;
    }

    public String getAge() {
        return Age;
    }
    public void setAge(String age) {
        this.Age = age;
    }
    public Date getRegdate() {
        return Regdate;
    }
    public void setRegdate(Date regdate) {
        this.Regdate = regdate;
    }

    public String getUserPW() {
        return userPW;
    }

    public void setUserPW(String userPW) {
        this.userPW = userPW;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }


}
