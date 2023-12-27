package me.raveenaingale.fitnessapp.models;

import lombok.Data;

@Data
public class Notification {
    private long id;
    private String message;
    public Notification(long id, String message){
        this.id = id;
        this.message = message;
    }
}
