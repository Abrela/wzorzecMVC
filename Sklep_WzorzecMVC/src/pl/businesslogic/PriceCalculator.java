package pl.businesslogic;

import pl.model.Product;

import java.util.ArrayList;

public class PriceCalculator {

    public static double calculatePrice(ArrayList<Product> products){
        double sum=0;

        for (Product product: products){
            double price=Double.parseDouble(product.getPrice());
            sum+=price;
        }

        return sum;
    }

    public static double calculateMean(ArrayList<Product> products){
        double mean=0;

        double sum=calculatePrice(products);
        mean=sum/products.size();

        return mean;
    }
}
