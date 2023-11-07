package poly;

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

