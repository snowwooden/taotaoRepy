package text;

import java.util.Scanner;

public class Shushu {
	public void ss(){
		Scanner scanner =new Scanner(System.in);
		 System.out.println("請輸入開始數和計算書數");
		 
		int n = scanner.nextInt();
		
		int m = scanner.nextInt();
		int i=0;
		int count=0;
		for (i=n;i<m;i++) {
			if (i==1) {
				continue;
			}
			if (((i%2!=0)&&(i%3!=0))||(i==2||i==3)) {
				 System.out.println(i+"是素数");
         		  count++;
			}
		}
//		while(i<m){
//			if (i==1) {
//				break;
//			}
//			
//		  if ((i%2!=0)&&(i%3!=0)) {
//			  System.out.println(i+"是素数");
//			  count++;
//		}
//		  i++;
//		  
//		}
		System.out.println("数数一共有"+count);
		
	}

	public static void main(String[] args) {
		 Shushu shushu = new Shushu();
		 shushu.ss();
	} 

}
