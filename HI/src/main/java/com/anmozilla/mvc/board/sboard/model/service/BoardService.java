package com.anmozilla.mvc.board.sboard.model.service;

import java.sql.Connection;
import java.util.List;

import static com.anmozilla.mvc.common.jdbc.JDBCTemplate.*;

import com.anmozilla.mvc.board.sboard.model.dao.BoardDao;
import com.anmozilla.mvc.board.sboard.model.vo.Board;

public class BoardService {
	// !!!! 민주
	
	

		public Board getsBoardByNo(int no) {
			Connection conn = getConnection();
			Board board = new BoardDao().getsBoardByNo(conn, no);
			
			close(conn);
			
			return board;
		}

		public int insertStudy(Board board) {
			Connection conn = getConnection();
			int result = new BoardDao().insertStudy(conn, board);
			
			if(result > 0) {
				commit(conn);
			}else {
				rollback(conn);
			}
			close(conn);
			return result;
		}

		public int deleteBoard(int no) {
			Connection conn = getConnection();
			int result = new BoardDao().deleteBoard(conn, no);
			
			if(result > 0) {
				commit(conn);
			}else {
				rollback(conn);
			}
			close(conn);
			return result;
		}

		public List<Board> selectAllBoard() {
			Connection conn = getConnection();
			List<Board> list = new BoardDao().selectAllBoard(conn);
			close(conn);
			
			return list;
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 현진 !!!!!!!!!!!!!!!
//	public List<Board> getMyStudyByNo(int userNo) {
//		List<Board> myStudyList = null;
//		Connection connection = getConnection();
//		
//		myStudyList = new BoardDao().findMyStudyAll(connection, userNo);
//		
//		close(connection);
//		
//		return myStudyList;
//	}
	
	// List 만들어서 목록 >> loginMember 없이 해보기
	public List<Board> getMyStudyByNo() {
		List<Board> myStudyList = null;
		Connection connection = getConnection();
		
		myStudyList = new BoardDao().findMyStudyAll(connection);
		
		close(connection);
		
		return myStudyList;
	}
	
	
	
	
	
	
	
	
//	public Board getMyStudyByNo() {
//		Board myStudy = null;
//		Connection connection = getConnection();
//		
//		myStudy = new BoardDao().findMyStudyByNo(connection);
//		
//		close(connection);
//		
//		return myStudy;
//	}

//	public List<Board> getMyStudyList(PageInfo pageInfo) {
//		Board myStudy = null;
//		Connection connection = getConnection();
//		
//		myStudy = new BoardDao().findMyStudyByNo(connection, pageInfo);
//	
//		return myStudy;
//	}




}
