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
	public Integer idCheck(String member_id) throws Exception {
		
		return membermapper.idCheck(member_id);
	}
	
    /* 로그인 */
    @Override
    public MemberVO memberLogin(MemberVO member) throws Exception {
        
        return membermapper.memberLogin(member);
    }
    
    
	//구글 회원가입
	@Override
	public void joinMemberByGoogle(MemberVO vo) throws Exception {
		membermapper.memberJoin(vo);
	}

	//구글 로그인
	@Override
	public MemberVO loginMemberByGoogle(MemberVO member) throws Exception {
		MemberVO returnVO = null;
		try {
			returnVO = membermapper.loginMemberByGoogle(member);
			System.out.println("S: 로그인 아디: "+member.getMember_id()+" 비번: "+member.getPw()+" 이름: "+member.getName());
		} catch (Exception e) {
			e.printStackTrace();
			returnVO = null; //실행하다 문제가 생겼을때 해당 데이터를 보내지않겠다는 의미 = 예외처리
		}
		return returnVO;
	}
	
	

}
