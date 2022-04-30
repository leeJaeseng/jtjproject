package com.jtj.DAO;

import java.util.List;

import com.jtj.bean.BoardBean;

public interface BoardDAO {
 
	//게시물 목록
 public List<BoardBean> list() throws Exception; 
 // 게시물 작성
 public void write(BoardBean bean) throws Exception;
 
 //게시물 조회 
 
 public BoardBean view(int bno) throws Exception;

 
 //게시물 수정
 
 public void modify(BoardBean bean) throws Exception;
 
 
 //게시물 삭제
 
 public void delete(int bno) throws Exception;
}

