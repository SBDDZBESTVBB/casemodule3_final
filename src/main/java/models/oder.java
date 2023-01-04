package models;

import java.util.Date;

public class oder {
    private int idoder;
   private Date date;
   private double totaloder;
   private int iduser;

    public oder() {
    }

    public oder(int idoder, Date date, double totaloder, int iduser) {
        this.idoder = idoder;
        this.date = date;
        this.totaloder = totaloder;
        this.iduser = iduser;
    }

    public int getIdoder() {
        return idoder;
    }

    public void setIdoder(int idoder) {
        this.idoder = idoder;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public double getTotaloder() {
        return totaloder;
    }

    public void setTotaloder(double totaloder) {
        this.totaloder = totaloder;
    }

    public int getIduser() {
        return iduser;
    }

    public void setIduser(int iduser) {
        this.iduser = iduser;
    }
}


