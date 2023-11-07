  class Employee{
	protected String name="ABC";
	protected int bonus=500;
	
	 	protected void display()
	{
		System.out.println("name:"+name);
		System.out.println("Bonus:"+bonus);

	}
 	 	
}

class PermannetEmp extends Employee{
	int salary=3000;
	int total;
	
	 	public void displayDetails() {
		name="vvv";
		display();
		total=salary+bonus;
		System.out.println("Total:"+total);
	}
	
}
	/*class Temp  {
		int salary;
		int total;
		
		public void displayDetails() {
			total=salary+bonus;
		}*/




public class EmpTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		PermannetEmp e1= new PermannetEmp();
		e1.displayDetails();
				
	}

}
