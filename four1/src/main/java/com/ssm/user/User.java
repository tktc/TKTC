package com.ssm.user;

import java.util.Arrays;

public class User {
    private int id;
    private String name;
    private String[] favorites;
    private String sex;

    public User() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String[] getFavorites() {
        return favorites;
    }

    public void setFavorites(String[] favorites) {
        this.favorites = favorites;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", favorites=" + Arrays.toString(favorites) +
                ", sex='" + sex + '\'' +
                '}';
    }



    public User(int id, String name, String[] favorites, String sex) {
        this.id = id;
        this.name = name;
        this.favorites = favorites;
        this.sex = sex;
    }
}
