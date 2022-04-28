package com.jtj.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jtj.bean.TestBean;

@Repository //DAO를 스프링에 인식 시킴

public class TestDAOImpl implements TestDAO { // 사용할 Mapper.xml의 namespace 명

	private static final String namespace="testMapper";

	

	@Inject //DB 커넥션과 클로즈를 자동으로 해주는 SqlSession

	private SqlSession sqlSession;

	

	@Override

	public List<TestBean> test() throws Exception{ //Mapper.xml의 쿼리문 id

		// TODO Auto-generated method stub

		return sqlSession.selectList(namespace+".test");

	}



}