package com.mybookmall.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mybookmall.model.MemberVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTest {

	@Autowired
	private MemberMapper membermapper;			//MemberMapper.java 인터페이스 의존성 주입
	
	/*
	 * //회원가입 쿼리 테스트 메서드
	 * 
	 * @Test public void memberJoin() throws Exception{ MemberVO member = new
	 * MemberVO();
	 * 
	 * member.setMember_id("test2"); //회원 id member.setEmail("test"); //회원 메일
	 * member.setPw("test"); //회원 비밀번호 member.setName("test"); //회원 이름
	 * member.setPhone("test"); //회원 휴대폰번호 member.setGender("여"); //회원 성별
	 * member.setBirth(20000101); //회원 생년월일 member.setAddr("test"); //회원 상세주소
	 * member.setLogin_platform("test"); //회원가입 플랫폼
	 * 
	 * 
	 * membermapper.memberJoin(member); //쿼리 메서드 실행
	 * 
	 * }
	 */
    /* 로그인 쿼리 mapper 메서드 테스트 */
    @Test
    public void memberLogin() throws Exception{
        
        MemberVO member = new MemberVO();    // MemberVO 변수 선언 및 초기화
        
        /* 올바른 아이디 비번 입력경우 */
        member.setMember_id("admin");
        member.setPw("admin");
        
        /* 올바른 않은 아이디 비번 입력경우 */
        //member.setMemberId("test1123");
        //member.setMemberPw("test1321321");
        
        membermapper.memberLogin(member);
        System.out.println("결과 값 : " + membermapper.memberLogin(member));
        
    }

}