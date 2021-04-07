package com.mybookmall.mapper;


import org.apache.ibatis.annotations.Select;

public interface TimerMapper {

	@Select("SELECT now() FROM dual")
	public String getTime();
	
	public String getTime2();
}