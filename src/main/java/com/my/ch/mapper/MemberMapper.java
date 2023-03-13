package com.my.ch.mapper;

import com.my.ch.dto.MemberDto;

public interface MemberMapper {
		public void join(MemberDto memberdto);
		public int login(String user_id);
}
