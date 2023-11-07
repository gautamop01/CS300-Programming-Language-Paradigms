 class Student implements NSSActivities{
	 private String rollno,name;
	 private int totalhrs;
	 @Override
		public void bloodDOnation(int hr) {
			// TODO Auto-generated method stub
			totalhrs=totalhrs+hr;
		}
	@Override
	public void attendNationalDays(int hr) {
		// TODO Auto-generated method stub
		totalhrs=totalhrs+hr;
	
	}
	public Student(String n, String r)
	{
		name=n;
		rollno=r;
	}
	public void display()
	{
		System.out.println(rollno +":" + totalhrs);
	}
	 public void applyextraHours()
	 {//extra=90;
 		 
		 if (totalhrs >=50)
			 totalhrs+=extra;
	 }
	 
	/* public void rules()
	 {
		 System.out.println("rules");
		 NSSActivities.super.rules();
	 }*/
	
}

public class InterfaceTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Person p= new Person("sdfsd","sd");
		p.display();
		Student s1= new Student("AShan","S17-343");
		s1.bloodDOnation(20);
		s1.attendNationalDays(40);
		s1.applyextraHours();
		 s1.rules();
 		s1.display();
		
		Student s2= new Student("Vaibhav","S17-345");
	 
		s2.attendNationalDays(10);
		s2.applyextraHours();
		s2.display();
	}

}
