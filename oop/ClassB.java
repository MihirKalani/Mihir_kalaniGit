package oop;

public class ClassB extends ClassA {

    public ClassB() {
        super(90, 90);
    }

    void FeatureB1() {
        System.out.println("Feature of class B");
    }

    void FeatureB2() {
        System.out.println("Feature of class B");
    }

    void add(int x, int y) {
        System.out.println(x - y);
        super.add(12, 90);
    }
}
