package com.my.ch.mapper;

import java.util.List;

import com.my.ch.dto.PostDto;

public interface Mapper {
	public void write(PostDto postdto);
	List<PostDto> getList(long category_id);
	PostDto getRead(long post_num);
	
	public void getDelete(long post_num);
	public void modify(PostDto postdto);
	

}
