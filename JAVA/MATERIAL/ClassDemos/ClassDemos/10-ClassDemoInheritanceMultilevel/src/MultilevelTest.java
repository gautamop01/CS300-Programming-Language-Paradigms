

class Person {
	protected String name;
	protected String address;
	public Person(String n, String a) {
		name=n;
		address=a;
		System.out.println("in grandparent(Person cons");
 	}
	public void display()
	
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
		System.out.println("in parent(Employee cons");

 		
	}
	
public void display()
	
	{
		System.out.println("name:"+name);
		System.out.println("Address:"+address);
		System.out.println("id:"+empid);
		System.out.println("salary:"+salary);

	} 
}
/*class Customer extends Person{
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
	}*/

	 
class ContractBasis extends Employee{
	String contractduration;
	public ContractBasis(String n, String a, String id, int sal,String cd)
	{
		super(n,a,id,sal);
		contractduration=cd;
		System.out.println("in own(Contract cons");

	}
 
	public void display()
	{
		super.display();
		System.out.println("Contract dutration:" +contractduration);
		name=name + " Surname";
		System.out.println(name);
	}
	
}

public class MultilevelTest {

	public static void main(String[] args) {
		
		// TODO Auto-generated method stub
		ContractBasis cb1= new ContractBasis("Vaibhav","Quepem","id-1",40000,"8 months");

	cb1.display();
	}

}
