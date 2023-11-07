//Live demo- polymorphism/Dynamic binding/method overriding
package poly; 
import java.util.Scanner;

  

public class PolymorphismTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Customer c= new Customer("Shravan","Quepem","Id-1",5);
		Person p=null;
		System.out.println("Enter the type of subject:");
		Scanner sc= new Scanner(System.in);
		String persontype=sc.nextLine();
		if(persontype.toUpperCase().equals("E"))
			p=new Employee("Rohan","Margao","Id-1",2300);
		else if(persontype.toUpperCase().equals("C"))
			
			p= new Customer("Shravan","Quepem","Id-1",5);
		else
			System.out.println("Invalid input");
		
		if (p!=null)	
			p.display();
		

	}

}
