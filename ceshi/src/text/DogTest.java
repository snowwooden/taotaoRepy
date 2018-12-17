package text;

import java.awt.List;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class DogTest {

	@SuppressWarnings("unused")
	public static void main(String[] args) {
//		java.util.List<Dog> list = new ArrayList<>();
//		Dog dogone =new Dog(1, "HUAHUA", 5, 9);
//		Dog dogtwo =new Dog(2, "HUAHUA", 5, 9);
//		Dog dogthe =new Dog(3, "HUAHUA", 5, 9);
//		Dog dogfour =new Dog(4, "HUAHUA", 5, 9);
//		list.add(dogone);
//		list.add(dogtwo);
//		list.add(dogthe);
//		list.add(dogfour);
//		for (Dog dog : list) {
//			System.out.println(dog);
//	  
//		}
//		System.out.println("*********************");
//		  list.remove(2);
//		  for (Dog dog : list) {
//				System.out.println(dog);
//		  
//			}
//		
//	}
 
		Set< Dog> dogs = new HashSet<Dog>();
		Dog dogone =new Dog(1, "HUAHUA", 5, 9);
		
		Dog dogthe =new Dog(3, "HUAHUA", 5, 9);
		Dog dogtwo =new Dog(2, "HUAHUA", 5, 9);
		Dog dogfour =new Dog(4, "HUAHUA", 5, 9);
		dogs.add(dogthe);
		dogs.add(dogtwo);
		dogs.add(dogone);
		dogs.add(dogfour);
		Iterator<Dog> it = dogs.iterator();
		while(it.hasNext()){
			
			System.out.println(it.next());
		}
		
		
}
}
