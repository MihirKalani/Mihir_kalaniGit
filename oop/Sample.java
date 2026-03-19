package oop;

public class Sample {
    int a = 18;
    Sample(){
        System.out.println("Constructor");
    }
// This is mathod overloading where we use same class with different parameter
    String mysample(String a,String b){
        System.out.println(a);
        System.out.println(b);
        return a;
    }
    int mysample(int a,int b){
        System.out.println(a);
        System.out.println(b);
        return 1;
    }
    static void staticmethod(){
        System.out.println("Hello Static Method");
    }
//    void mysample(String a,String b, String c){
//        System.out.println(a);
//        System.out.println(b);
//        System.out.println(c);
//    }
}
