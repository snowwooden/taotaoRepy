package text;

import java.util.Scanner;

public class Tutu {

	public static void main(String[] args) {
		long s1,s2;// 定义这个月和下个月兔子的数量  
        s1 = 1;  //第一个月为1对  
        s2 = 1;  //第二个月为1对  
        int i=1;  //定义一个控制变量  
        int m;  // 月份数  
        Scanner in = new Scanner(System.in); //从控制台输入想要查看的月份  
        System.out.println("请输入你想要查看的月数:");//输入提示  
        m = in.nextInt();//输入的整数月份赋值给m  
        //while循环  
        while(true){  
            //第一个月和第二个月兔子的数量都为1对  
            if(i==1||i==2){  
                System.out.println(i+" month: "+s1);  
                i++; // 控制变量 i 加1  
            }  
            // i 大于3并且小于我们需要查看的月份  
            else if(i<m){  
                s1 = s1+s2;   
                s2 = s1+s2;    
                System.out.println(i+" month: "+s1);  
                    i++;//月份加1  
                System.out.println(i+ " month: "+s2);  
                    i++; //朋份加1  
            }else{  
                break;//不符合条件就退出  
            }  
                  
        }  
    }  
}  