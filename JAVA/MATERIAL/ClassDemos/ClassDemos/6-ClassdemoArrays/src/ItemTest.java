import java.util.Scanner;

class Item {
	String item_code ;
	String itemName ;
	int price;	
	int stock_balance ;
	public Item(String item_code,String item_name) {
		this.item_code=item_code;
		itemName=item_name;
		
		
	}
	 
	public Item(String item_code,String item_name,int price) {
		this.item_code=item_code;
		itemName=item_name;
		this.price=price;
		stock_balance=10;
	}

public String getItem_code() {
	return item_code;
}
public void setItem_code(String item_code) {
	this.item_code = item_code;
}
public String getItemName() {
	return itemName;
}
public void setItemName(String itemName) {
	this.itemName = itemName;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public int getStock_balance() {
	return stock_balance;
}
public void setStock_balance(int stock_balance) {
	this.stock_balance = stock_balance;
}


public void setPriceBalance(int price,int bal)
{
	this.price=price;
	stock_balance=bal;
}

public void display()
{
	System.out.println("Item code:" + item_code);
	System.out.println("Item Name:" + itemName);
	System.out.println("Price:" + price);
	System.out.println("Stock Qty.:" + stock_balance);

}


}




public class ItemTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	
	/*
	 * Without arrays
	 * Item I1=new Item("I-1","Laptop");
	 I1.setPrice(34000);
	 I1.setStock_balance(30);
	 
	 I1.display();
	 
	 System.out.println("USing get methods");
	 System.out.println("\n\n");
	 System.out.println("Itemcode:"+ I1.getItem_code());
	 System.out.println("ItemName:"+ I1.getItemName());
	 System.out.println("Price:"+ I1.getPrice());
	 System.out.println("Balance:"+ I1.getStock_balance()); */
		
		
		
	Item [] items= new Item[4];
	Scanner sc = new Scanner(System.in);
	String item_code ;
	String itemName ;
	int price;	
	 
	for (int i=0;   i<4; i++)
	{
		/*items[i]=new Item("I-"+i,"Laptop-"+i);
		items[i].setPrice(3400);
		items[i].setStock_balance(30);
		items[i].display();
		*/
		
		System.out.println("enter item code");
		item_code=sc.nextLine();
		System.out.println("enter item name");
		
		itemName=sc.nextLine();
		System.out.println("enter price");
 		price=Integer.parseInt(sc.nextLine());

 
		items[i]=new Item(item_code,itemName,price);
		
	}
	
	for( Item i : items)
		if (i!=null)
			i.display();
	
	}

}
