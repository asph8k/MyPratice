package kr.co.jsp.board.commons;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*") //모든 요청에 다 가능한 필터. /뒤에 뭐든간에 모든곳에서 필터기능을 사용이 가능하다.
public class TestFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("필터 동작!");
		
		chain.doFilter(request, response);
	}

	
	
}
