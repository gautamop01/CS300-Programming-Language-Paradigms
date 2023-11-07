package poly;

 public class Person {
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
