
 

import java.util.Scanner;

public class NestingException {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc= new Scanner(System.in);
		System.out.println("enter deno:");
		int x=30;
		int d= sc.nextInt();
		try
		{
		
		int a[] = {2};
		a[10]=45;
		
		  
		try {
		
		int res=x/d;
		}
		/*finally {
			System.out.println("Finally1");
		}*/
		  catch(ArithmeticException e)
		{
			System.out.println("arithmetic exception1");
		} 
		finally {
			System.out.println("Finally1");

		}
		 
		}
		 
		 catch(ArithmeticException e)
		{
			System.out.println("arithmetic exception2");
		} 
		 
		 
		catch(ArrayIndexOutOfBoundsException e)
		{
			System.out.println("Array index out exception");

		}
		finally {
			System.out.println("Finally outer tyr");

		}
		 
	}

}
