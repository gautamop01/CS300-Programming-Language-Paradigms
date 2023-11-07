//  This is simple program for guess the number game
// import java.util.random;
import java.util.Scanner;


public class Mini_Project {
    public static void main(String[] args){
        // MINI PROJECT 
        Scanner sc = new Scanner(System.in);
        int myNumber = (int)(Math.random()*100);
        int userNumber = 0;

        do {
            System.out.println("Guess the number (1-100):");
            userNumber = sc.nextInt();

            if(userNumber == myNumber){
                System.out.println("Nice.. Correct answer!!");
                break;
            }
            else if(userNumber > myNumber){
                System.out.println("Your number is too large");
            }
            else{
                System.out.println("Your number is too small");
            }
        }  while(userNumber >= 0);
         
        System.out.println("My number was : ");
        System.out.println(myNumber);
    }
}
