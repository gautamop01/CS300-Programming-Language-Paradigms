import java.time.Instant;
import java.time.LocalDateTime;

public class FactoryMethodClient {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
 ShapeFactory sf= new ShapeFactory();
//try {
sf.getShape("triangle").draw();
sf.getShape("Rectangle").draw();
//sf.getShape("trianle").draw();
//}
//catch(NullPointerException ne)
//{
	//System.out.println(ne.getMessage());
//}
	}

}

  interface Shape{
	public void draw();
}
  class Rectangle implements Shape{

	@Override
	public void draw() {
		// TODO Auto-generated method stub
		System.out.println("drawn Rectangle");
	}
	  
  }
  
  class Square implements Shape{

		@Override
		public void draw() {
			// TODO Auto-generated method stub
			System.out.println("drawn Square");	
		}
		  
	  }
  class Triangle implements Shape{

		@Override
		public void draw() {
			System.out.println("drawn trianle");
		}
		  
	  }
  class ShapeFactory{
	  
	public Shape getShape(String shapeType) {
		if (shapeType.equalsIgnoreCase("Rectangle"))
		{
			return new Rectangle();
		}
		if (shapeType.equalsIgnoreCase("Square"))
		{
			return new Square();
		}
		if (shapeType.equalsIgnoreCase("triangle"))
		{
			return new Triangle();
		}
		return null;
		
	}
  }