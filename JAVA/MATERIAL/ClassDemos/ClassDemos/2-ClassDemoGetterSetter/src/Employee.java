
public class Employee {
String ssn,name;
int age;
	 
	public String getSsn() {
	return ssn;
}

public void setSsn(String ssn) {
	this.ssn = ssn;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public int getAge() {
	return age;
}

public void setAge(int age) {
	this.age = age;
}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
Employee e= new Employee();
e.setAge(23);
e.setName("Jimmy");
e.setSsn("123");
System.out.println(e.getSsn());
System.out.println(e.getName());
System.out.println(e.getAge());


	}

}
