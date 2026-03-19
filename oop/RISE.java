package oop;

public class RISE {
    int rollno;
    String name;
    String Spe;

    void Getdetails(int rollno, String name, String Spe){
        this.rollno = rollno;
        this.name = name;
        this.Spe = Spe;
    }

    void display(){
        System.out.println(rollno + " " + name + " " + Spe);
    }
}