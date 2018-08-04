package com.my.blog.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.blog.model.Member;

@Repository
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	SqlSessionTemplate sst;

	@Override
	public Member getUsersByID(String m_id) {
		System.out.println("DAOusername:"+m_id);
		return sst.selectOne("memberns.getUsersByID",m_id);
	}
	
}
