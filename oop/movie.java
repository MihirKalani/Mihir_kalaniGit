package oop;

public class movie {
    String movieName;
    int seats;
    int pricePerSeat = 200; // Default price per seat

    // Constructor
    public movie(String movieName, int seats) {
        this.movieName = movieName;
        this.seats = seats;
    }

    // Method to calculate the bill
    double calculateBill() {
        return seats * pricePerSeat;
    }

    // Method to display movie info
    void display() {
        System.out.println("Movie Name: " + movieName);
        System.out.println("Seats Booked: " + seats);
        System.out.println("Price per Seat: " + pricePerSeat);
        System.out.println("Total Bill: " + calculateBill());
    }

}
