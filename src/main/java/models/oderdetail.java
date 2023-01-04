package models;

public class oderdetail {
    private int idoderdetail;
    private int idproduct;
    private int amount;
    private double totaloderdetail;
    private int idoder;

    public oderdetail() {
    }

    public oderdetail(int idoderdetail, int idproduct, int amount, double totaloderdetail, int idoder) {
        this.idoderdetail = idoderdetail;
        this.idproduct = idproduct;
        this.amount = amount;
        this.totaloderdetail = totaloderdetail;
        this.idoder = idoder;
    }

    public int getIdoderdetail() {
        return idoderdetail;
    }

    public void setIdoderdetail(int idoderdetail) {
        this.idoderdetail = idoderdetail;
    }

    public int getIdproduct() {
        return idproduct;
    }

    public void setIdproduct(int idproduct) {
        this.idproduct = idproduct;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public double getTotaloderdetail() {
        return totaloderdetail;
    }

    public void setTotaloderdetail(double totaloderdetail) {
        this.totaloderdetail = totaloderdetail;
    }

    public int getIdoder() {
        return idoder;
    }

    public void setIdoder(int idoder) {
        this.idoder = idoder;
    }
}
