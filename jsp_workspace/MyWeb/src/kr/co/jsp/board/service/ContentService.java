package kr.co.jsp.board.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.jsp.board.model.BoardDAO;
import kr.co.jsp.board.model.BoardVO;

public class ContentService implements IBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		int bId = Integer.parseInt(request.getParameter("bId"));
		
		/*
		 # 쿠키로 조회수를 컨트롤 해 보자.
		 1. 사용자가 글 제목을 눌러서 상세보기 요청을 보낼 때 
		 글 번호로 된 쿠키를 하나 만들어 줄 겁니다. (String)
		 쿠키 이름과 쿠키에 저장할 값을 모두 글 번호로 만들어 주겠습니다.
		 쿠키의 수명은 15초로 설정하겠습니다.
		 
		 2. 요청을 보낼 때 같이 넘어온 쿠키 중에, 
		  현재 글 번호와 일치하는 쿠키가 존재한다면 조회수를 올려주지 않을 겁니다.
		  현재 글 번호와 일치하는 쿠키가 없다면 조회수를 올려주도록 하겠습니다.  
		 */
		//String bNum = String.valueOf(bId);//정수를 문자열로 바꿔준다. valueOf = 정수를 문자열로 바꿔주는 메소드
		String bNum = request.getParameter("bId");
		//요청을 받아오면 쿠키를 굽는다.
		/*//쿠키 생명이 15초 되든 30초가 되든 글번호가 요청이 들어와야지 조회수가 증가된다.
		Cookie hitCoo = new Cookie(bNum, bNum); 
		hitCoo.setMaxAge(15);
		response.addCookie(hitCoo); */
		
		boolean flag = false; //쿠키의 존재 유무를 파악하기 위해 flag변수 선언
		
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie c : cookies) {
				if(c.getName().equals(bNum)) {
					flag = true;
					break;
				}
			}
			if(!flag) { //만약 쿠키를 찾지 못했다면 15초가 지나기 전에 새로고침을 누르면 조회수 증가
				Cookie hitCoo = new Cookie(bNum, bNum); //쿠키가 존재하지 않는다면 쿠키를 생성
				hitCoo.setMaxAge(15);
				response.addCookie(hitCoo);
				BoardDAO.getInstance().upHit(bId);
			}
		}
		
		BoardVO vo = BoardDAO.getInstance().contentBoard(bId);
		
		request.setAttribute("content", vo);

		
	}

}
