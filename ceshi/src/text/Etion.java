package text;

import java.util.Scanner;
import java.util.Set;

public class Etion {
	  public Etion() {
	  }
	  
public void ceshi() {
	 int a=5;
	 Integer bInteger= new Integer(a);
	 System.out.println(bInteger);
	 Integer c=a;
	 System.out.println(c);
	 int d= bInteger;
	 System.out.println( d);
	 String m=Integer.toString(a);
	 System.out.println("我是String变来的" +m);
	 String K="gg";
	 int ll=Integer.parseInt(K);
	 System.out.println( "我是String转INT" +ll);
	
	
	}


public void charset(){
  String string= new String("我是 照片了那个过人 ");
  byte[] arr= string.getBytes();
  for(int i=0;i<arr.length;i++){
	  System.out.print(arr[i]+" ");
  }
  String ml= new String(arr);
  System.out.println();
  System.out.print(ml);
 
}
}