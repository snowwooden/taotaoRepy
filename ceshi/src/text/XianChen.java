package text;

 class MyThread extends Thread{
	 public MyThread(){
		 
	 }
//      public String MyThread(String name){
//    
//		 return name;
//	 }
	 
	 @Override
	public void run() {
		 for(int i=0;i<200;i++){
			 System.out.println( getName()+ "运行了"+(i)+"次");
		 }
	}
	
}

public class XianChen {
	
	public static void main(String[] args) throws InterruptedException  {
		// TODO Auto-generated method stub
		MyThread thread = new MyThread();
         thread.start();
         try {
        	 Thread.sleep(1000);
		} catch (InterruptedException e) {
			e.setStackTrace(null);
		}
         thread.join(1000);  
         
        
	}

}
