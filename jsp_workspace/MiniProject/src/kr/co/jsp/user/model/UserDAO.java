package kr.co.jsp.user.model;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class UserDAO implements IUserDAO {
	
	private DataSource ds; //커넥션 풀을 사용하기 위해 변수 선언
	
	private UserDAO() { 
		try {
			InitialContext ct = new InitialContext();
			ds = (DataSource) ct.lookup("java:comp/env/jdbc/myOracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	private static UserDAO dao = new UserDAO();
	
	public static UserDAO GetInstance() {
		if(dao == null) {
			dao = new UserDAO();
		}
		return dao;
		
	}

	@Override
	public void insertUser(UserVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean userIdCheck(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int loginCheck(String id, String pw) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserVO userAllInfo(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void changeUserInfo(UserVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void changeUserPw(String id, String newPw) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteUser(String id) {
		// TODO Auto-generated method stub

	}

}
