package models;

public class Product {
<<<<<<< HEAD
    private int id;
=======
    private int idproduct;
>>>>>>> d07227d8321e869b3e276f04474fabe4147a98f0
    private String category;
    private String productname;
    private String color;
    private String size;
    private double price;
    private int amountproduct;
    private String imgproduct;

    public Product() {
    }

<<<<<<< HEAD
    public Product(int id, String category, String productname, String color, String size, double price, int amountproduct, String imgproduct) {
        this.id = id;
=======
    public Product(int idproduct, String category, String productname, String color, String size, double price, int amountproduct, String imgproduct) {
        this.idproduct = idproduct;
>>>>>>> d07227d8321e869b3e276f04474fabe4147a98f0
        this.category = category;
        this.productname = productname;
        this.color = color;
        this.size = size;
        this.price = price;
        this.amountproduct = amountproduct;
        this.imgproduct = imgproduct;
    }

<<<<<<< HEAD
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
=======
    public int getIdproduct() {
        return idproduct;
    }

    public void setIdproduct(int idproduct) {
        this.idproduct = idproduct;
>>>>>>> d07227d8321e869b3e276f04474fabe4147a98f0
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getAmountproduct() {
        return amountproduct;
    }

    public void setAmountproduct(int amountproduct) {
        this.amountproduct = amountproduct;
    }

    public String getImgproduct() {
        return imgproduct;
    }

    public void setImgproduct(String imgproduct) {
        this.imgproduct = imgproduct;
    }
}
