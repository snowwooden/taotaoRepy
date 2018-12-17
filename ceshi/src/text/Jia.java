package text;

import java.util.Scanner;

public class Jia {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("请输入基数");
		int cardinalNumber = input.nextInt(); 
		System.out.println("请输入相加的次数");
		int count = input.nextInt();
		int sum = getSum(cardinalNumber, count);
		System.out.println("sum = " + sum);
		}
		public static int getSum(int cardinal,int count){
		int sum = 0;
		int num = cardinal;
		for(int i = 1; i <= count; i++){
		sum += num;
		num = num*10 + cardinal;//每轮循环过后num都会变大10倍
		}
		return sum;
		}
		}

