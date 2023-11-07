// Your First Program

class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, World!"); 
          System.out.println("Hello, World!");
          System.out.println("this is shortcut"); 
          // Variables 
          String name = "Gautam";
          int age = 30;
          String neighbour = "Akku";
          String friend = neighbour;
          System.out.println(friend);
          System.out.println(name);
          System.out.println(neighbour);    
          System.out.println(age);   
          
          // Byte --> 1 byte memory  [-128 to 127]
          // short --> 2
          // int --> 4
          // long --> 8
          // float --> 4 3.14
          // double --> 8
          String Myname = "Gautam";
          String Mname = "Mahar";
          System.out.println(Myname.length());
        //   String  Newname = new String( original:"Apu");
        //   String Newfriend = new String( original:"Akku");
          String fullname = Myname + " Kumar " + Mname;
          System.out.println(fullname);
          System.out.println(fullname.charAt(8)); 
          // replace
          String Myname2 = Myname.replace('G',  'A');
          System.out.println(Myname2);




    }
}