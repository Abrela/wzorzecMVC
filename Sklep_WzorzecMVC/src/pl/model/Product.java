package pl.model;

public class Product {

    private String name;
    private String price;

    public Product (String name, String price){
        this.name=name;
        this.price=price;

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Nazwa produktu: " + name +", " + "cena produktu: " + price;
    }
}
