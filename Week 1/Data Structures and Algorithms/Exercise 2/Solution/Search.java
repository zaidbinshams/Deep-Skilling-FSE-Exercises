import java.util.*;
class Product {
    int productId;
    String productName;
    String category;
    Product(int productId, String productName, String category) {
        this.productId = productId;
        this.productName = productName;
        this.category = category;
    }
    void display() {
        System.out.println(productId + " " + productName + " " + category);
    }
}
public class Search {
    static Product linearSearch(Product[] products, int id) {
        for (Product p : products) {
            if (p.productId == id) return p;
        }
        return null;
    }
    static Product binarySearch(Product[] products, int id) {
        int low = 0;
        int high = products.length - 1;
        while (low <= high) {
            int mid = (low + high) / 2;
            if (products[mid].productId == id) return products[mid];
            else if (products[mid].productId < id) low = mid + 1;
            else high = mid - 1;
        }
        return null;
    }
    public static void main(String[] args) {
        Product[] products = {
                new Product(103, "Laptop", "Electronics"),
                new Product(101, "Shoes", "Fashion"),
                new Product(105, "Watch", "Accessories"),
                new Product(102, "Phone", "Electronics"),
                new Product(104, "Bag", "Fashion")
        };
        int searchId = 102;
        System.out.println("Linear Search:");
        Product result = linearSearch(products, searchId);
        if (result != null) result.display();
        else System.out.println("Product not found");
        Arrays.sort(products, Comparator.comparingInt(p -> p.productId));
        System.out.println("\nBinary Search:");
        result = binarySearch(products, searchId);
        if (result != null) result.display();
        else System.out.println("Product not found");
    }
}