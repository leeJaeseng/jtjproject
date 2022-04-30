package com.jtj.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jtj.bean.BoardBean;


@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.jtj.Mapper";
	

	@Override
	public List<BoardBean> list() throws Exception {
		
		return sql.selectList(namespace + ".list");
	}


	@Override
	public void write(BoardBean bean) throws Exception {


		sql.insert(namespace + ".write", bean);
		
	}


	@Override
	public BoardBean view(int bno) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace + ".view", bno);
	}


	@Override
	public void modify(BoardBean bean) throws Exception {
		sql.update(namespace + ".modify", bean);
		
	}


	@Override
	public void delete(int bno) throws Exception {
		sql.delete(namespace + ".delete", bno);
		
	}

}
