package prointerfacemultiple;

public interface Internet extends Media {
	int a=50;
	default public void call() {
		System.out.println("calling through internet");
		
	}
	default public void show() {
		//Media.super.show();
		System.out.println("calling through internet show");
		
	}
public abstract void chat();
}
