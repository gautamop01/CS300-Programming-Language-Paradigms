  class DepartmentTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Department d1= new Department();
		Department d2=  new Department("D-2");
		Department d3=  new Department("D-3","Sales");
		d1.setDetails("D-1","Production",35000);
		d2.setDetails("Production",50000);
		d3.setBudget(45000);
		d1.display();
		d2.display();
		d3.display();

		System.out.println("No of depts is :" +Department .getCount());
 		  
		System.out.println("Company name :" +Department.getCompanyname());


	}

}


    class Department{
	private String dno,dname;
	private int budget;
	private static int dcount;
	private static  final String company="Amazon Ltd.";
 	public Department(String dno)
	{
		this.dno=dno;
		dcount++;
		
	}
	
	public Department( )
	{
		 dcount++;
		
	}
	public Department(String dno,String dname)
	{
		this.dno=dno;
		this.dname=dname;
		dcount++;
		
	}
	
	public void setDetails(String dno,String dname,int budget)
	{
		this.dno=dno;
		this.dname=dname;
		this.budget=budget;
		dcount=dcount+100;
	}
	
	public void setDetails(String dnam,int budget)
	{
		 
		 dname=dnam;
		this.budget=budget;
	}
	
	public void setBudget(int b)
	{
		this.budget=b;
		dno="hh";
	}
	public void display()
	{
		System.out.println("Dno:"+this.dno);
		System.out.println("Dname:"+dname);
		System.out.println("Budget:"+this.budget);
	 	System.out.println("no of objects:"+dcount);
		
		
	}
	
	public static int getCount()
	{
		int x=10;
	 	System.out.println("x:"+x  );
 		return dcount;
	}
	
	public static String getCompanyname()
	{
		//company="Flipkart";
		return company;
	}
	  
}


