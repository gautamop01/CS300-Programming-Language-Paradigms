
public class Employee {
private String ssn,name;
int age;
public String getDetails()
{
	
	return ("SSN:" + ssn+ "\n" + "Name:" +name + "\n" + "Age:" +age);
}
public void setDetails(String ssn,String name, int age)
{
	this.ssn=ssn;
	this.name=name;
	this.age=age;
}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
Employee e1= new Employee();
e1.setDetails("123", "Jim", 24);
System.out.println(e1.getDetails());
			
	}

}
