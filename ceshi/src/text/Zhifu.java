package text;

import java.util.Scanner;

public class Zhifu {
	

	public static void main(String[] args) {
		int a=0;
		int b=0;
		int c=0;
		int other=0;
		char[] ar=null;
		System.out.println("请输入任意长度");
		Scanner sc=new Scanner(System.in);
		String m=sc.nextLine();
		ar= m.toCharArray();
		for(int i=0;i<ar.length;i++){
			if(ar[i]>='0'&&ar[i]<='9'){
				a++;
			}else if((ar[i]>='a'&&ar[i]<='z')||(ar[i]>='A'&&ar[i]<='Z')){
				b++;
			}else if(ar[i]==' '){
				c++;
			}else {
				other++;
			}
			
		}
		
		System.out.println("数字个数"+a+"个");
		System.out.println("字母个数"+b+"个");
		System.out.println("空格数"+c+"个");
		System.out.println("其他"+other+"个");
	}
}