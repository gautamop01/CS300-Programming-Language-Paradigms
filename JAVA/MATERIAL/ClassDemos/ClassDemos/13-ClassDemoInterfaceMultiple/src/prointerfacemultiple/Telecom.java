package prointerfacemultiple;

public interface Telecom extends Media{
public void chat();
    default void call()
{
	System.out.println("lets telecom call");
}
    int a =10;
    default   void show()
    {
    	System.out.println("lets telecom show");
    }
}

