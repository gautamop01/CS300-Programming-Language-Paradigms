import java.util.ArrayList;

public class ArrayListExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<Integer> nums=new ArrayList<Integer>();
		nums.add(3);
		nums.add(1);
		nums.add(8);
		nums.add(6);
		
		for (int i=0;i<nums.size();i++)
			System.out.println(nums.get(i));
		nums.sort(null);
		System.out.println("after sorting");
		for (int i=0;i<nums.size();i++)
			System.out.println(nums.get(i));
		nums.remove(2);
		System.out.println("after removing an element");

		for (int i=0;i<nums.size();i++)
			System.out.println(nums.get(i)); 
		
		
		
		ArrayList<String> names=new ArrayList<String>();
		names.add("Ben");
		names.add("Ash");
		names.add("Shra");
		names.add("Ish");
		
		for (int i=0;i<names.size();i++)
			System.out.println(names.get(i));
		names.sort(null);
		System.out.println("after sorting");
		for (int i=0;i<names.size();i++)
			System.out.println(names.get(i));
		names.remove(2);
		System.out.println("after removing an element");

		for (int i=0;i<names.size();i++)
			System.out.println(names.get(i));  
		
		
		
		//Array of Employee objects
		ArrayList <Emp> emps = new  ArrayList<Emp>();
		emps.add(new Emp("Id-1","Ben"));
		emps.add(new Emp("Id-2","Ash"));
		emps.add(new Emp("Id-3","Shra"));
		emps.add(new Emp("Id-4","Isha"));
		
		/*for (int i=0;i<emps.size();i++) 
		{
			emps.get(i).display();
		}*/
		
		for(Emp e :emps)
			e.display();
		
	} 
		

}

class Emp{
	String id,name;
	public Emp(String id, String name)
	{
		this.id=id;
		this.name=name;
		
	}
	public void display()
	{
		System.out.println("Name:" +name + " " +" Id:" +id);
		//System.out.println("Id:" +id);

	}
}


