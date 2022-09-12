package kr.co.jsp.board.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import kr.co.jsp.util.JdbcUtil;

public class BoardDAO implements IBoardDAO {
	
	//커넥션 풀의 정보를 담을 변수를 선언.
	private DataSource ds;

	private BoardDAO() {
		//클래스에서 커넥션 풀을 구하는 방법. (설정 파일이 InitialContext 객체에 저장되기 때문)
		try {
			InitialContext ct = new InitialContext();
			ds = (DataSource) ct.lookup("java:comp/env/jdbc/myOracle");
			
		} catch (NamingException e) {
			e.printStackTrace();
		}
		
		/*
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} */
	}
	
	private static BoardDAO dao = new BoardDAO();
	
	public static BoardDAO getInstance() {
		if(dao == null) {
			dao = new BoardDAO();
		}
		return dao;
	}
	
	////////////////////////////////////////////
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	
	/*
	private Connection getConnection() throws Exception {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "jsp";
		String upw = "jsp";
		
		return DriverManager.getConnection(url, uid, upw);
	}
	*/
	@Override
	public boolean insert(BoardVO vo) { //게시물을 등록 해주는 메소드
		boolean flag = false;
		String sql = "INSERT INTO board(board_id, writer, title, content)"
				+ " VALUES(bid_seq.NEXTVAL,?,?,?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getWriter());
			pstmt.setString(2, vo.getTitle());
			pstmt.setString(3, vo.getContent());
			/*
			int rn = pstmt.executeUpdate();
			if(rn == 1) {
				flag = true;
			}
			*/
			if(pstmt.executeUpdate() == 1) flag = true; //위에 if문과 같은 방식.
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt); //아래 방법과 같다.
			/*
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			*/
		}
		return flag;
	}

	@Override
	public List<BoardVO> selectAll() { //게시물 목록 전체 조회하는 메소드
		List<BoardVO> boardList = new ArrayList<>();
		String sql = "SELECT * FROM board ORDER BY board_id DESC";
		
		try {
			conn = ds.getConnection(); //DB와 연동하기 위해 호출
			pstmt = conn.prepareStatement(sql); //sql문을 사용하기 위해 호출
			rs = pstmt.executeQuery(); //조회 하기위해 executeQuery메소드 호출
			
			while(rs.next()) {
				BoardVO vo = new BoardVO(
						rs.getInt("board_id"), //컬럼명을 작성해야 한다.
						rs.getString("writer"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getTimestamp("reg_date")
						);
				boardList.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return boardList;
	}

	@Override
	public BoardVO selectOne(int bId) { //게시물 상세 보기 메소드
		BoardVO vo = null; //리턴값을 받기 위해 미리 변수를 선언
		String sql = "SELECT * FROM board WHERE board_id=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();//sql결과를 rs가 가지고 있다.
			
			pstmt.setInt(1, bId);
			
			if(rs.next()) {
				vo = new BoardVO ( //if문에서 객체를 생성하면 if문이 끝나면 자동으로 객체는 소멸된다.
					rs.getInt("board_id"),
					rs.getString("writer"),
					rs.getString("title"),
					rs.getString("content"),
					rs.getTimestamp("reg_date")
				);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return vo;
	}

	@Override
	public boolean update(BoardVO vo) {
		boolean flag = false;
		String sql = "UPDATE board SET title = ?, content = ?"
				+ "WHERE board_id = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContent());
			pstmt.setInt(3, vo.getBoardId());
			
			if(pstmt.executeUpdate() == 1) {
				flag = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt);
		}
		
		return flag;
	}

	@Override
	public boolean delete(int bId) {
		boolean flag = false;
		String sql = "DELETE FROM board WHERE board_id = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, bId);
			
			int rn = pstmt.executeUpdate();
			if(rn == 1) {
				flag = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt);
		}
		
		return flag;
	}

}
