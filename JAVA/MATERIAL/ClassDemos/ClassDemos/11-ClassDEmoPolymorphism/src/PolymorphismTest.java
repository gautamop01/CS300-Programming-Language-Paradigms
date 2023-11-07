//Live demo- polymorphism/Dynamic binding/method overriding
package poly; 
import java.util.Scanner;

class Person {
	protected String name;
	protected String address;
	public Person(String n, String a) {
		name=n;
		address=a;
 	}
	public  void display()
	
	{
		System.out.println("name:"+name);
		System.out.println("Address:"+address);


	}
	public Person() {System.out.println("in parent cons");}
	
}

class Employee extends Person{
	private String empid;
	private int salary;
	public Employee(String n, String a, String id, int sal)
	{
		 super(n,a);
		empid=id;
		salary=sal;
 		
	}
public void display()
	
	{
		System.out.println("name:"+name);
		System.out.println("Address:"+address);
		System.out.println("id:"+empid);
		System.out.println("salary:"+salary);

	} 
}
class Customer extends Person{
		private String custid;
		private int rating;
		public Customer(String n, String a, String id, int rating)
		{
			super(n,a);
			 custid=id;
			this.rating=rating;
 			
		}
	
		public void display()
		
		{ 
			System.out.println("name:"+name);
			System.out.println("Address:"+address);
			System.out.println("custid:"+custid);
			System.out.println("rating:"+rating);

		} 
	}

	 


public class PolymorphismTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Person p=null;
		System.out.println("Enter the type of subject:");
		Scanner sc= new Scanner(System.in);
		String persontype=sc.nextLine();
		if(persontype.toUpperCase().equals("E"))
			p=new Employee("Rohan","Margao","Id-1",2300);
		else if(persontype.toUpperCase().equals("C"))
			
			p=new Customer("Shravan","Quepem","Id-1",5);
		else
			System.out.println("Invalid input");
		
		if (p!=null)	
			p.display();
		

	}

}
