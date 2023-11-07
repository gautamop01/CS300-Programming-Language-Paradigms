import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class GenAlgorithm {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List <Integer> nums=Arrays.asList(3,4,2,6,1);
		List<String> names=Arrays.asList("Shravan","Abhsekh","Isha","Neroy");
		Collections.sort(nums);
		System.out.println(nums);
		Collections.reverse(nums);
		System.out.println(nums);

		Collections.sort(names);
		System.out.println(names);
		Collections.reverse(names);
		System.out.println(names);
		
		List<Emp> emps= new ArrayList<Emp>();
		emps.add(new Emp("Id-1","Siddhant"));
		emps.add(new Emp("Id-2","Benzyl"));
		emps.add(new Emp("Id-3","Akash"));
		emps.add(new Emp("Id-1","Ajmal"));
		
		Collections.sort(emps);
		System.out.println(emps);
		

	}

}

class Emp implements Comparable<Emp>{
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
	@Override
	public int compareTo(Emp o) {
		// TODO Auto-generated method stub
		return this.name.compareTo(o.name);
	}
}

