
public class EmployeeTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Employee e1= new Employee();
		e1.display();
 		Employee e2= new Employee("234","James");
		e2.display();
	}

}

class Employee {
	private String ssn,name;
	private int age;
	public Employee() {
		ssn="123";
		name="John";
		age=20;
	}
	public Employee(String ssn,String name) {
		this.ssn=ssn;
		this.name=name;
		 
	}
	public void display() {
		System.out.println("SSN:" +ssn);
		System.out.println("Nmae:" +name);
		System.out.println("Age:" +age);

	}
}