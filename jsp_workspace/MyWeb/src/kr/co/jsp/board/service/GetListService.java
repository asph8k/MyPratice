package kr.co.jsp.board.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.jsp.board.commons.PageCreator;
import kr.co.jsp.board.commons.PageVO;
import kr.co.jsp.board.model.BoardDAO;
import kr.co.jsp.board.model.BoardVO;

public class GetListService implements IBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		PageVO paging = new PageVO();
		BoardDAO dao = BoardDAO.getInstance();
		
		//사용자가 처음 게시판에 들어올 때는 페이지 선택을 하지 않기 때문에
		//페이지 선택을 1페이지로, 게시물 개수를 10개로 지정해 주겠습니다.
		if(request.getParameter("page") != null ) {
			paging.setPage(Integer.parseInt(request.getParameter("page")));
			paging.setCountPerPage(Integer.parseInt(request.getParameter("cpp")));
		}
		
		System.out.println("선택한 페이지: " + paging.getPage());
		System.out.println("게시물 수: " + paging.getCountPerPage());

		List<BoardVO> boardList = dao.listBoard(paging);
		
		//페이지 버튼 배치를 위해 PageCreator 객체를 생성.
		PageCreator pc = new PageCreator();
		//페이징 버튼 알고리즘을 위해 PageVO객체와 총 게시물 수를 setter로 전달.
		pc.setPaging(paging);
		pc.setArtiocleTotalCount(dao.countArticles());
		
		//알고리즘 결과가 잘 초기화 되었는지를 간단하게 확인.
		System.out.println(pc); //pc.tostring() 과 똑같다.
		
		//1일 이내 신규글 new마크 처리 로직
		for(BoardVO vo : boardList) {
			//운영체제의 현재 시간을 읽어서 밀리초로 리턴하는 메서드
			//1970년 1월 1일 자정을 기준으로 현재까지 흐른 시간을
			//밀리초로 리턴합니다.
			long now = System.currentTimeMillis();
			//게시물의 작성 시간을 밀리초로 읽어오기
			long regTime = vo.getRegDate().getTime();
			
			if(now - regTime < 60 * 60 * 24 * 1000) {
				vo.setNewMark(true);
			}
		}
		
		request.setAttribute("bList", boardList);
		//jsp 파일에서 버튼 배치를 위해 모든 정보가 완성된 PageCreator 객체를 
		//request 객체에 담아서 forwarding 하겠다.
		request.setAttribute("pc", pc);

		
	}

}








