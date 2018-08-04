package com.my.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.blog.dao.MemberDAO;
import com.my.blog.model.Member;
@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDAO md;
	@Override
	public Member getUsersByID(String m_id) {
			System.out.println("로그인 시도중");
		return md.getUsersByID(m_id);
	}
	
}
