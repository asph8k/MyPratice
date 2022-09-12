package basic;

import org.springframework.context.support.GenericXmlApplicationContext;

public class HelloSpring {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//평소에 쓰던 객체 사용 방식.
//		SpringTest st = new SpringTest();
//		st.hello();
		
		GenericXmlApplicationContext ct = new GenericXmlApplicationContext("classpath:test-config.xml");
		
		SpringTest st = ct.getBean("test", SpringTest.class);
		st.hello();
		
		ct.close();
		
	}

}
