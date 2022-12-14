package basic.ex03;

import org.springframework.context.support.GenericXmlApplicationContext;

public class MainClass {

	public static void main(String[] args) {
		
		GenericXmlApplicationContext ct = new GenericXmlApplicationContext("classpath:prototype-config.xml");
		
		Person hong = ct.getBean("person", Person.class);
		Person kim = ct.getBean("person", Person.class);
		kim.setAge(30);
		kim.setName("김철수");
		
		System.out.println("hong의 주소값: " + hong);
		System.out.println("kim의 주소값: " + kim);
		System.out.println("hong과 kim은 같은 겍체인가??? " + (hong == kim));
		
		System.out.println("---------------------------------------------");
		
		System.out.println("hong의 이름: " + hong.getName());
		System.out.println("hong의 나이: " + hong.getAge());
		
		System.out.println("kim의 이름: " + kim.getName());
		System.out.println("kim의 나이: " + kim.getAge());
		
	}

}
