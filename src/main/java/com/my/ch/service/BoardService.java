package com.my.ch.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.ch.dto.MemberDto;
import com.my.ch.dto.PostDto;
import com.my.ch.mapper.Mapper;
import com.my.ch.mapper.MemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BoardService implements OrderService {

	@Setter(onMethod_ = @Autowired)
	private Mapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper membermapper;

	@Override
	public void write(PostDto postdto) {
		log.info("service write");
		mapper.write(postdto);
		
	}

	@Override
	public List<PostDto> getList(long category_id) {
		log.info("service list");
		return mapper.getList(category_id);
	}

	@Override
	public PostDto getRead(long post_num) {
		log.info("service read");
		return mapper.getRead(post_num);
		
	}

	@Override
	public void getDelete(long post_num) {
		log.info("service delete");
		mapper.getDelete(post_num);
		
	}

	@Override
	public void modify(PostDto postdto) {
	log.info("service modify");
	mapper.modify(postdto);
		
	}
	
	/**member dto*/

	@Override
	public void join(MemberDto memberdto) {
		log.info("Service member join");
		membermapper.join(memberdto);
	}


	@Override
	public int login(String user_id) {
		log.info(user_id);
		return membermapper.login(user_id);
	}






}
