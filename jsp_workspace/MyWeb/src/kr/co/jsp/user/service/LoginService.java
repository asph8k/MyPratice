package kr.co.jsp.user.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.jsp.user.model.UserDAO;
import kr.co.jsp.user.model.UserVO;

public class LoginService implements IUserService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	    
		String id = request.getParameter("id");
	    String pw = request.getParameter("pw");
	    UserDAO dao = UserDAO.getInstance();
	    response.setContentType("text/html; charset=UTF-8");
	    String htmlCode;
	    
	    int result = dao.userCheck(id, pw);

	    try {
	    	PrintWriter out = response.getWriter();
	    	
	    	if(result == -1) {
	    		htmlCode = "<script> \r\n" +
						   "alert('아이디가 틀렸습니다.'); \r\n" +
						   "location.href='/MyWeb/loginPage.user';" +
						   "</script> \r\n";
				out.print(htmlCode);
				
				out.flush();			
	    	} else if(result == 0) {
	    		htmlCode = "<script> \r\n" +
						   "alert('비밀번호가 틀렸습니다.'); \r\n" +
						   "history.back()'; \r\n" +
						   "</script> \r\n";
				out.print(htmlCode);
				
				out.flush();
	    	} else {
	    		UserVO vo = dao.getUserInfo(id);
				request.getSession().setAttribute("user", vo);
				response.sendRedirect("/MyWeb/myPage.user");
	    	}
	    } catch (Exception e) {
	    	e.printStackTrace();
	    }
	}

}
