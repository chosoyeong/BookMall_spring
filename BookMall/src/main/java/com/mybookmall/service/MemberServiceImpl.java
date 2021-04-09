package com.mybookmall.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mybookmall.mapper.MemberMapper;
import com.mybookmall.model.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberMapper membermapper;

	@Override
	public void memberJoin(MemberVO member) throws Exception {
		
		membermapper.memberJoin(member);
		
	}
	
	@Override
	public int idCheck(String member_id) throws Exception {
		
		return membermapper.idCheck(member_id);
	}
	
}
