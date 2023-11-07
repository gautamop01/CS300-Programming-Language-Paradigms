package prointerfacemultiple;

public interface Media {
public default void show()
{
	System.out.println("Media show");
}
}
