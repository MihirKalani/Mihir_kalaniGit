package oop;

public class CoffeeMachine {

    // Total cups counter (shared by all orders)
    private int totalCups = 0;

    // Default constructor (Regular + Small + 1 cup)
    public CoffeeMachine() {
        this("Regular", "Small", 1);
    }

    // Constructor with type and quantity (default size = Small)
    public CoffeeMachine(String type, int quantity) {
        this(type, "Small", quantity);
    }

    // Full constructor (type, size, quantity)
    public CoffeeMachine(String type, String size, int quantity) {
        double totalPrice = calculatePrice(type, size, quantity);
        totalCups += quantity;
        displayOrder(type, size, quantity, totalPrice);
    }

    // Calculate price logic (UNCHANGED)
    private double calculatePrice(String type, String size, int quantity) {
        double basePrice;

        if (type.equalsIgnoreCase("Regular")) {
            basePrice = 100;
        } else if (type.equalsIgnoreCase("Milk")) {
            basePrice = 130;
        } else {
            System.out.println("Invalid coffee type!");
            return 0;
        }

        double sizeMultiplier = 1.0;
        if (size.equalsIgnoreCase("Medium")) {
            sizeMultiplier = 1.5;
        } else if (size.equalsIgnoreCase("Large")) {
            sizeMultiplier = 2.0;
        }

        return basePrice * sizeMultiplier * quantity;
    }

    // Display order details (UNCHANGED)
    private void displayOrder(String type, String size, int quantity, double price) {
        System.out.println("\nCoffee Order");
        System.out.println("Type     : " + type);
        System.out.println("Size     : " + size);
        System.out.println("Quantity : " + quantity);
        System.out.println("Price ₹  : " + price);
        System.out.println("Total cups ordered so far: " + totalCups);
    }
}
