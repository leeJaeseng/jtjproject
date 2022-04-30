package com.jtj.sevice;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jtj.DAO.BoardDAO;
import com.jtj.bean.BoardBean;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardDAO dao;

	@Override
	public List<BoardBean> list() throws Exception {
		
		return dao.list();
	}

	@Override
	public void write(BoardBean bean) throws Exception {
		
		dao.write(bean);
		
	}

	@Override
	public BoardBean view(int bno) throws Exception {
		
		return dao.view(bno);
	}

	@Override
	public void modify(BoardBean bean) throws Exception {

         dao.modify(bean);
		
	}

	@Override
	public void delete(int bno) throws Exception {


		dao.delete(bno);
		
	}

}
