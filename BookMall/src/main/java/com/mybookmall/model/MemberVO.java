package com.mybookmall.model;

public class MemberVO {
	
	//회원 id
	private String member_id;
	
	//회원 이메일
	private String email;
	
	//회원 비밀번호
	private String pw;
	
	//회원 이름
	private String name;
	
	// 회원 전화번호
	private String phone;
	
	// 회원 성별
	private String gender;
	
	// 회원 생년월일
	private int birth;
	
	// 가입 일자
	private int date;
	
	// 회원 포인트
	private int point;
	
	// 회원가입 경로(일반, 카카오, 구글)
	private String login_platform;
	
	// 회원 주소
	private String addr;
	
	// 관리자 구분(0:일반사용자, 1:관리자)
	private int adminCK;

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getBirth() {
		return birth;
	}

	public void setBirth(int birth) {
		this.birth = birth;
	}

	public int getDate() {
		return date;
	}

	public void setDate(int date) {
		this.date = date;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getLogin_platform() {
		return login_platform;
	}

	public void setLogin_platform(String login_platform) {
		this.login_platform = login_platform;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public int getAdminCK() {
		return adminCK;
	}

	public void setAdminCK(int adminCK) {
		this.adminCK = adminCK;
	}

	@Override
	public String toString() {
		return "MemberVO [member_id=" + member_id + ", email=" + email + ", pw=" + pw + ", name=" + name + ", phone="
				+ phone + ", gender=" + gender + ", birth=" + birth + ", date=" + date + ", point=" + point
				+ ", login_platform=" + login_platform + ", addr=" + addr + ", adminCK=" + adminCK + "]";
	}


	
}
