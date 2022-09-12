package user;

import java.util.ArrayList;
import java.util.List;

public class UserRepository {

	//회원의 정보를 담아놓을 리스트(DB 대용)
	private static List<User> userList = new ArrayList<>();
	
	// 생성된 User객체를 리스트에 추가하는 메소드
	public static void save(User user) {
		userList.add(user);
	}
	
	//회원 정보 저장 후 리스트 내부를 보여주는 메서드.
	   public static void showUsers() {
	      System.out.println("### 회원 정보 ###");

	      for(User user : userList) {
	         System.out.println("아이디: " + user.getAccount());
	         System.out.println("비밀번호: " + user.getPassword());
	         System.out.println("이름: " + user.getName());
	         System.out.println("별명: " + user.getNickName());
	         System.out.println("===============================");
	      }
	   }
	   
	   //매개값으로 id를 받아서 해당 id를 가진 객체가 userList에 있는지 탐색하는 메소드
	   public static User getUser(String id) {
		   for(User user : userList) { //향상포문을 이용해서 userList에 들어있는 처음부터 끝까지 모든 데이터를 반복하며 하나씩 꺼내오고 User타입으로 변수명은 user라 선언한다.
			   if(user.getAccount().equals(id)) { //user에서 가져온아이디 데이터들중에 입력받은 id와 같은게 있는지 찾아본다.
				   return user; //있을시 user로 리턴해준다.
			   }
		   }
		   return null; //없을시 null로 리턴한다.
	   }
}
