package oop;
enum TrafficLight {
    RED,
    YELLOW,
    GREEN
}

public class Trafficsingle {
    public static void main(String[] args) {
        TrafficLight light = TrafficLight.RED;

        switch (light) {
        case RED:
            System.out.println("STOP");
            break;

        case GREEN:
            System.out.println("GO");
            break;

        case YELLOW:
            System.out.println("SLOW");
            break;
    }
}
}
