package text;

import java.util.Scanner;

public class Chengji {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		 int n = 0;
		 System.out.println("请输入成绩：");
		 Scanner a=new Scanner(System.in);
		   n=a.nextInt();
	        CJ(n);
		 
     }
	private static void CJ(int n){
          String str = (n>=90)?"分，A等":((n>60)?"分，B等":"分，C等");
          System.out.println(n+str);
    }
	}
