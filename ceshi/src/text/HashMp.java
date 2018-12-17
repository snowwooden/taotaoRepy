package text;

import java.security.KeyStore.Entry;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;

public class HashMp {
public static void main(String[]args){
	Map <String,String> tst= new HashMap<String,String>();
	Scanner scanner=new Scanner(System.in);
	for(int i=0;i<3;i++){
	System.out.println("请输入key");
	String s1=scanner.next();
	System.out.println("请输入value");
	String s2=scanner.next();
	tst.put(s1, s2);
	}
	Iterator<String> iterator= tst.values().iterator();
	while (iterator.hasNext()) {
		System.out.print(iterator.next()+" /");
	}
	System.out.print("++++++++++++++++++++++++");
	Set<java.util.Map.Entry<String, String>> entries = tst.entrySet();
	for (java.util.Map.Entry<String, String> ent:entries) {
		System.out.print(ent.getValue()+" /");
		System.out.print(ent.getKey()+" /");
		
	}
	System.out.println("++++++++++++++++++++++++");
	System.out.println("+++++++++++请输入要查找的单词+++++++++++++");
	String sorch= scanner.next();
	Set<String> st2 = tst.keySet();
	for (String string : st2) {
		if (sorch.equals(string)) {
			System.out.println("++找到单吃为++");
			System.out.print(tst.get(string));
			break;
		}
		
		
		}
	}
 
}

