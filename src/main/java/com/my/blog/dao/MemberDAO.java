package com.my.blog.dao;

import com.my.blog.model.Member;

public interface MemberDAO {

	Member getUsersByID(String userID);

}
