//Inheritance Use of Super keyword
class Person{
	protected String name,address;
	public void display()
	{
		System.out.println("Name:" + name);
		System.out.println("Address:" + address);

	}
 		
	public Person(String name,String address) {
		this.name=name;
		this.address=address;
	}
	
	public Person() {
	 	System.out.println("in parent con");
	 }

	
}

class Student extends Person{
	String rollno,clname;
	
	public Student (String n, String a, String r, String cl)
	{
		//super();
		super(n,a);
		rollno=r;
		clname=cl;
		
	}
	public void display()
	{
		super.display();
		System.out.println("rollno:" + rollno);
		System.out.println("class:" + clname);

	}
	public Student() {
	//	super();
		System.out.println("in child con");
	}

	
}

public class StudentTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Student s= new Student( "Vaibhav","Quepem","101","TYBSC");
		s.display();
		
		Student s2=new Student();
		s2.display();
	}

}
