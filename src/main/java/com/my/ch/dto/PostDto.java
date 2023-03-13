package com.my.ch.dto;

import lombok.Data;

@Data
public class PostDto {

	 /** 
	 post_num INT(11) PRIMARY KEY AUTO_INCREMENT,
  user_id VARCHAR(50),
  title VARCHAR(100),
  content TEXT,
  created_at DATETIME,
  views INT(11),
  category_id IN*/
	
	public Long post_num;
	public String user_id;
	public String title;
	public String content;
	public String created_at;
	public Long views;
	public Long category_id;
	
	
}
