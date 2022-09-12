package basic.ex04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

public class Printer {
	
	/*
	 # @Autowired
	 - 객체를 자동 주입할때 사용하는 아노테이션입니다.
	 - 스캔 명령을 통해 객체를 찾아 주입하는데, 타입 이름으로 검색합니다.
	 - 타입을 찾아내지 못하면 이름(id 속성값)을 통해 검색합니다. 
	 - 생성자나 메소드 그리고 필드에 적용이 가능합니다.
	 
	 # @Qualifier("bean id")
	 - Autowired를 사용할때 동일 타입의 빈이 여러개 있는 경우
	 어떤 빈을 주입해야 하는지 선택해 주는 추가 아노테이션 입니다.
	*/

	@Autowired
	@Qualifier("paper2") 
	private Paper paper;
	
	/*
	@Autowired //매개변수의 타입을 스프링이 config에서 찾아서 타입이 있으면 자동으로 주입해준다.
	public Printer(Paper paper) {
		this.paper = paper;
	}
	*/
	
	/*
	//setter메소드를 이용해서 paper객체를 전달
	@Autowired //스프링에 자동 연결
	public void setPaper(Paper paper) {
		this.paper = paper;
	}
	*/
	
	public void showPaperInfo() {
		for(String info : paper.data) {
			System.out.println(info);
		}
	}
}
