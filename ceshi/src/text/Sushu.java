package text;

import java.util.Scanner;

public class Sushu {
	public static boolean pd(int n){
		boolean m = true;
		if(n==1)
		m=false;
		else{
			for(int i=2;i<=Math.sqrt(n);i++){
				if((n%i)==0||n==1){
					m=false;
					break;
				}else
				m=true;
			}
		}
		return m;
		/*boolean f = true;
        if(n==1)
          f = false;
        else{
            for(int i=2;i<=Math.sqrt(n);i++){
            if((n%i)==0 || n==1){
                f = false;
                break;
            }
             else
               f = true;
          }
        }
        return f;*/
    }
	


	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System .out.println("請輸入查詢的素數範圍");
		int count=0;
		int a=0;
		int b=0;
		Scanner c=new Scanner(System.in);
		Scanner d=new Scanner(System.in);
		a=c.nextInt();
		b=d.nextInt();
		for(int i=a;i<b;i++){
			if(pd(i)){
				count++;
				System.out.println(i+" ");
				
			}
		}
		System.out.println();
		System.out.println("该区间内有"+count+"个素数");
		
	}

}
