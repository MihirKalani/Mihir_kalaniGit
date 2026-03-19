package oop;
enum Foodtype{
    Veg,
    Non_Veg,
    Vegan;
}
public class FoodOrder {
    Foodtype foodtype;
    int order_id;
     String[] items;

    FoodOrder(int order_id, Foodtype foodtype, String items[]){
        this.order_id = order_id;
        this.foodtype = foodtype;
        this.items = items;
    }
//    void display() {
//        System.out.println("Order ID: " + order_id);
//        System.out.println("Food Type: " + foodtype);
//        System.out.println("Ordered Items:");
//
//        for (int i = 0; i < items.length; i++) {
//            System.out.println("- " + items[i]);
//        }

    double calculatePrice(double ...price){
        double total = 0;
        for(double i : price){
            total = total + i;
        }
        return total;
    }
    void display(){
        System.out.println("OrderId"+" "+order_id);
        System.out.println("FoodType"+" "+foodtype);
        for(String i : items ){
            System.out.println(i);
        }
        System.out.println("Total Bill"+" "+ calculatePrice(70, 50, 26));
    }
}
