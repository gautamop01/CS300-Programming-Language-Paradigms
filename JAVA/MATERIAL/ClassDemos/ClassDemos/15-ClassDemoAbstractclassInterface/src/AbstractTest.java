  abstract class Marksheet{
	protected String examcode;
	public Marksheet(String examcode)
	{
		this.examcode=examcode;
	}
	public void display() {}
	
	// public abstract void generate();
}

class StudentMarksheet extends Marksheet implements Marksheetgen{
	String rollno;
	
	public StudentMarksheet(String examcode,String rollno)
	{
		super(examcode);
		this.rollno=rollno;
	}

	
	public void generate() {
		// TODO Auto-generated method stub
		examcode="May 2020";
		System.out.println("Generating student marksheets...");
		System.out.println("For " + examcode + " Rollno : " + rollno);

		
	}
	
	
}

/*class ConsolidatedMarksheet extends Marksheet{

	@Override
	public void generate() {
		// TODO Auto-generated method stub
		System.out.println("Generating consolidated marksheet...");
		
	}
	
}*/

public class AbstractTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Marksheet m1 = new Marksheet("dfs");
		//m.display();
		StudentMarksheet m= new StudentMarksheet("Mar-2020","S18-601");
 m.generate();
	}

}
