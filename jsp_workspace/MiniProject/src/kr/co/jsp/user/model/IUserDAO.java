package kr.co.jsp.user.model;

public interface IUserDAO {

	//사용자의 회원정보 등록
	void insertUser(UserVO vo);
	
	//중복 ID 여부검사
	boolean userIdCheck(String id);
	
	//로그인 유효성 검사
	int loginCheck(String id, String pw);
	
	//회원정보 모두 불러오기
	UserVO userAllInfo(String id);
	
	//회원 정보 수정
	void changeUserInfo(UserVO vo);
	
	//비밀번호 변경
	void changeUserPw(String id, String newPw);
	
	//회원탈퇴
	void deleteUser(String id);
	
}
