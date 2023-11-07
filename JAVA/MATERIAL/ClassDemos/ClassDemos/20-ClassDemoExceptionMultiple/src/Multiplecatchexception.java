import java.util.Scanner;

public class Multiplecatchexception {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc= new Scanner(System.in);
		System.out.println("enter deno:");
		int x=30;
		int d= sc.nextInt();
		try
		{
		
		int a[] = {2};
		a[0]=45;
		
		  
		
		int res=x/d;
	  
		 
		}
		 
		 catch(ArithmeticException e)
		{
			System.out.println("arithmetic exception");
		} 
		 
		 
		catch(ArrayIndexOutOfBoundsException e)
		{
			System.out.println("Array index out exception");

		}
		 finally {
			 System.out.println("ended");
		 }
	}

}
