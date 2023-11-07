 
public class GenericClassExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		GenClass<String,String> obj= new GenClass<String,String>("Margao","XYZ");
		obj.display();
		
		GenClass<Integer,String> obj2= new GenClass<Integer,String> (23,"Panjim");
		
		GenClass<Emp,String> obj3= new GenClass<Emp,String> (new Emp("Id1","Shravan"),"Panjim");

		obj3.display();
		

	}

}

class GenClass<T,U>{
	T ob1;
	U ob2;
	
	public GenClass(T o1, U o2)
	{
		ob1=o1;
		ob2=o2;
		
	}
	public void display()
	{
		System.out.println("Ob1:" +ob1);
		System.out.println("Ob2:" +ob2);
	}
}

class Emp{
	String id,name;
	public Emp(String id, String name) {
		this.id=id;
		this.name=name;
	}
	public void display()
	{
		System.out.println(name);
		System.out.println(id);
		
	}
	
	public String toString() {
		return(String.format("[%s - %s ]", id,name));
	}
}

 