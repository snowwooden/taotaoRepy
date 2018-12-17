package text;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class Ioreadput {

	public static void main(String[] args) {
    try {
    	FileInputStream fi = new FileInputStream("E:\\ll.jpg");
    	FileOutputStream fo = new FileOutputStream("E:\\newll.jpg");
    	int n=0;
    	byte[] bs=  new byte[2048];
    	while ((n=fi.read(bs))!=-1) {
    		fo.write(bs);
		}
    	fi.close();
    	fo.close();
//		FileInputStream fileInputStream =new FileInputStream("E:\\LI.txt");
//		byte[] m = new byte[100];
//		 fileInputStream.read(m, 1, 3);
//		 System.out.print(new String(m));
//		 fileInputStream.close();
////		
//		int n =0;
//		while ((n=fileInputStream.read())!=-1) {
//			System.out.println( (char)n+" ");
//		}
    	
		
	} catch (FileNotFoundException e) {
		
		e.printStackTrace();
	}catch (IOException e) {
		// TODO: handle exception
	}
	}

}
