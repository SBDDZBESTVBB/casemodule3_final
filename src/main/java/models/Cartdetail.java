package models;

public class Cartdetail {
 private String productname;
 private String size;
 private int amount;
 private double price;
 private double totalcartdetail;

    public Cartdetail() {
    }

    public Cartdetail(String productname, String size, int amount, double price, double totalcartdetail) {
        this.productname = productname;
        this.size = size;
        this.amount = amount;
        this.price = price;
        this.totalcartdetail = totalcartdetail;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getTotalcartdetail() {
        return totalcartdetail;
    }

    public void setTotalcartdetail(double totalcartdetail) {
        this.totalcartdetail = totalcartdetail;
    }
}
