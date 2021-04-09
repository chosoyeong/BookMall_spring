package com.mybookmall.mapper;

import com.mybookmall.model.MemberVO;

public interface MemberMapper {
	// 회원가입
	public void memberJoin(MemberVO member);

	// 아이디 중복 검사
	public Integer idCheck(String member_id);

    /* 로그인 */
    public MemberVO memberLogin(MemberVO member);
	 

}
