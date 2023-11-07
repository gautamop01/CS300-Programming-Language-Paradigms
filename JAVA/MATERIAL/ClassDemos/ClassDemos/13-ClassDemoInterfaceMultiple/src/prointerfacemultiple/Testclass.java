package prointerfacemultiple;

public class Testclass implements Telecom,Internet{

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Testclass t= new Testclass();
		
		  t.call();
 		System.out.println("a="+ Internet.a);
 		 t.chat();
		 t.sms();
		 t.show();
	}

	public void call()
	{
		Telecom.super.call();
		Internet.super.call();
		
	}
 
	@Override
	public void chat() {
		// TODO Auto-generated method stub
		System.out.println("in test class chat");

	}

	 
	public void sms() {
		System.out.println("in test class sms");
		
	}

	 
	
	public void show() {
		Telecom.super.show();
		Internet.super.show();
		//System.out.println("in test class sms");
		
	}
	

}
