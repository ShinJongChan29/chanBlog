package com.my.blog.service;

import java.util.ArrayList;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.my.blog.model.Member;

@Component

public class UserService implements UserDetailsService {
	@Autowired
	MemberService ms;

	@Override
	public UserDetails loadUserByUsername(String m_id) throws UsernameNotFoundException {
		Member member = new Member();
		member.setM_id("1");
		System.out.println(member.toString());
		System.out.println("??:"+m_id);
		System.out.println(ms);
		member = ms.getUsersByID(m_id);
		System.out.println("??");
		
		if (member == null) {
			throw new UsernameNotFoundException("No user found with username" + member.getM_id());
		}
		System.out.println(member.toString());
		
		
		Collection<SimpleGrantedAuthority> roles = new ArrayList<SimpleGrantedAuthority>();
		roles.add(new SimpleGrantedAuthority("ROLE_USER"));
		UserDetails user = new User(m_id, member.getM_password(), roles);
		return user;
	}
}
