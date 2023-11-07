
public class AccountTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Account A= new Account(123456,1000);
		A.display();
		Account B= new Account(3456789,10000);
		B.display();
		A.deposit(3000);
		System.out.println("After depositing");
		A.display();
		B.transfer(20000, A);
 		A.display();

		B.display();
	}

}

class Account{
	private long acno;
	private double balance;
 	public Account(long acno)
	{
		this.acno=acno;
		balance=0;
		
	}
	public Account(long acno  ,int bal)
	{
		  
		this.acno=acno;
		balance=bal;
		
		//this.c=c;
		
	}
	
	public void deposit(int amt)
	{
		balance+=amt;
		//balance=balance+amt;
	}
	
	public void withdraw(int amt)
	{
		if (balance >amt)
		balance-=amt;
		//balance=balance+amt;
	}
	
	public void transfer(int amt,Account target)
	{
		if (balance >amt)
		{ 
		withdraw(amt);
		target. deposit(amt);
		}
		else
			System.out.println("cannot transfer");
		
	}
	
	
	public void display()
	{
		System.out.println("Accno:"+acno);
		System.out.println("Balance:"+balance);
		 
	}
	
	 
}

 
