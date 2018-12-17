package text;

public class Paixu {
	/*插入排序*/

	public static void main(String[] args) {
		/*int a[] = {3,1,5,7,2,4,9,6,10,8};      
        Paixu  obj=new Paixu();    
        System.out.println("初始值：");    
        obj.print(a);    
        obj.insertSort(a);    
        System.out.println("\n排序后：");    
        obj.print(a);    
    
    }    
    
    public void print(int a[]){    
        for(int i=0;i<a.length;i++){    
            System.out.print(a[i]+" ");    
        }    
    }    
    public void insertSort(int[] a) {    
        for(int i=1;i<a.length;i++){//从头部第一个当做已经排好序的，把后面的一个一个的插到已经排好的列表中去。    
                int j;    
                int x=a[i];//x为待插入元素    
                for( j=i;  j>0 && x<a[j-1];j--){//通过循环，逐个后移一位找到要插入的位置。    
                    a[j]=a[j-1];    
                }    
                a[j]=x;//插入    
        }    
            
    }    
}  */
		/*private void Bubble_2 ( int r[],int n){  
		    int low = 0;   
		    int high= n -1; //设置变量的初始值  
		    int tmp,j;  
		    while (low < high) {  
		        for (j= low; j< high; ++j) //正向冒泡,找到最大者  
		            if (r[j]> r[j+1]) {  
		                tmp = r[j]; r[j]=r[j+1];r[j+1]=tmp;  
		            }   
		        --high;                 //修改high值, 前移一位  
		        for ( j=high; j>low; --j) //反向冒泡,找到最小者  
		            if (r[j]<r[j-1]) {  
		                tmp = r[j]; r[j]=r[j-1];r[j-1]=tmp;  
		            }  
		        ++low;                  //修改low值,后移一位  
		    }   
		}  */ 
		//简单排序 蛮力算法
		int a[] = {3,1,5,7,2,4,9,6,10,8};    
        Paixu  obj=new Paixu();  
        System.out.println("初始值：");  
        obj.print(a);  
        obj.selectSort(a);  
        System.out.println("\n排序后：");  
        obj.print(a);  
  
    }  
    private void selectSort(int[] a) {  
        for(int i=0;i<a.length;i++){  
            int k=i;//k存放最小值下标。每次循环最小值下标+1  
            for(int j=i+1;j<a.length;j++){//找到最小值下标  
                if(a[k]>a[j])  
                    k=j;  
            }  
            swap(a,k,i);//把最小值放到它该放的位置上  
        }  
    }  
    public void print(int a[]){  
        for(int i=0;i<a.length;i++){  
            System.out.print(a[i]+" ");  
        }  
    }  
     public  void swap(int[] data, int i, int j) {    
            if (i == j) {    
                return;    
            }    
            data[i] = data[i] + data[j];    
            data[j] = data[i] - data[j];    
            data[i] = data[i] - data[j];    
        }    
}  
