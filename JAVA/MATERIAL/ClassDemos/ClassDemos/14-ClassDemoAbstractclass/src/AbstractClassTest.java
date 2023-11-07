abstract class Subject{
	public Subject()
	{
		System.out.println("learning subject");
	}
	abstract void setSyllabus();
	 void learnSubject()
	{
		System.out.println("learning now");
	}
	
}

class It extends Subject{

	@Override
	void setSyllabus() {
		// TODO Auto-generated method stub
		System.out.println("Java, C++,Python");
		
	}
	
	public void learnSubject()
	{
		System.out.println("leqrning IT");
	}
	
}
public class AbstractClassTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Subject s= new It();
		s.setSyllabus();
		s.learnSubject();

	}

}

