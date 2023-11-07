package poly;

   class Customer extends Person{
	private String custid;
	private int rating;
	public static void main(String[] args) {
		System.out.println("he ");
	}
	public Customer(String n, String a, String id, int rating)
	{
		super(n,a);
		 custid=id;
		this.rating=rating;
			
	}

	public void display()
	
	{ 
		System.out.println("name:"+name);
		System.out.println("Address:"+address);
		System.out.println("custid:"+custid);
		System.out.println("rating:"+rating);

	} 
}

 
