package com.my.ch.service;

import java.util.List;

import com.my.ch.dto.MemberDto;
import com.my.ch.dto.PostDto;

public interface OrderService {
	public void write(PostDto postdto);
	List<PostDto> getList(long category_id);
	 PostDto getRead(long post_num);
	 
	 public void getDelete(long post_num);
	 public void modify(PostDto postdto);
	 
	 
	 /**member*/
	 public void join(MemberDto memberdto);
	 public int login(String user_id);
}
