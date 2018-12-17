package text;

import java.util.Scanner;

/*程序分析：对n进行分解质因数，应先找到一个最小的质数k，然后按下述步骤完成：
(1)如果这个质数恰等于n，则说明分解质因数的过程已经结束，打印出即可。 
(2)如果n<>k，但n能被k整除，则应打印出k的值，并用n除以k的商,作为新的正整数你n,重复执行第一步。
(3)如果n不能被k整除，则用k+1作为k的值,重复执行第一步。*/

public class Zhiys {

	public static void main(String[] args) {
//		System.out.println("请输入一个正整数:");
//        Scanner a = new Scanner(System.in);
//            int n = a.nextInt();
//            for(int k=2;k<=n/2;k++){
//             if(n%k==0){
//                    System.out.print(k+"*");
//                    n= n/k;   //用递归把n重新定值
//                    k=2;  //这步很重要，让for循环重新执行
//                    }
//                 }
//                    System.out.print(n);    //把最后一个质因数输出    
//                }     
		zys();
		
            }
	public static void zys (){
		int num=0;
		System.out.println("请输入：");
		Scanner b = new Scanner(System.in);
		num = b.nextInt();
		int a=2;
		System.out.print(num + "=");
		
		while(num>a){
			if(num%a==0){
				System.out.println(a+"*");
				   num = num/a;
			}else{
				a++;
			}
			
		}
		System.out.println(a);
		
		
	}
}