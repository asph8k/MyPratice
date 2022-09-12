package user;

import java.util.ArrayList;
import java.util.List;

public class UserRepository2 {

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
	   /*
	   2. 로그인을 시도하는 회원의 모든 정보를 얻어오세요. (getUser())
    	getUser() -> 아이디를 전달받아 해당 아이디와 일치하는 객체가 있는지
    	확인 후, 있다면 그 객체를 리턴.
    	일치하는 객체가 없다면 null을 리턴.
	   */
	   //매개값으로 id를 받아서 해당 id를 가진 객체가 userList에 있는지 탐색하는 메소드
	   public static User getUser(String id) {
		   for(User user : userList) {
			   if(user.getAccount().equals(id)) {
				   return user;
			   }
		   }return null;
	   }
	   
}
