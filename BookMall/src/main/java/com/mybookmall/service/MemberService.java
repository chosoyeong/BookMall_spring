package com.mybookmall.service;

import com.mybookmall.model.MemberVO;

public interface MemberService {
	//회원가입
	public void memberJoin(MemberVO member) throws Exception;
	
}
