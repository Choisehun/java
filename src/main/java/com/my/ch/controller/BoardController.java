package com.my.ch.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.my.ch.dto.PostDto;
import com.my.ch.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor	//필드 값을 매개 변수로 하는 생성자를 스프링이 알아서 만들어 줌. 그리고 그런 형태의 생성자를 추가하면 스프링이 알아서 객체관리 해줌(@Auto.. 처럼)
@Controller
public class BoardController {
	
	private BoardService service;
	
	
	@GetMapping("/writepage")
	public void moveWrtie() {
		log.info("move:- wirtePage -");
	}
	
	
	
	@PostMapping("/write")
	public void creatWrtie(PostDto postsdto) {
		log.info("start:- Controller write -");
		service.write(postsdto);
		log.info("end:- Controller write -");
	}
	
	@GetMapping("/getList")
	public void boardList(@RequestParam("category_id") int category, Model model){
		log.info("start:- Controller List -" );
		
			if(category==1) {
				model.addAttribute("list",service.getList(category));
				log.info("category1");
			}else if(category==2) {
				model.addAttribute("list",service.getList(category));
				log.info("category2");
			}else if(category==3) {
				model.addAttribute("list",service.getList(category));
				log.info("category3");
			}
	
		log.info("end:- Controller List -" );
		
	}
	
	@GetMapping({"/getRead","/modifypage"})
	public void boardRead(@RequestParam("post_num") long num,Model model) {
		log.info("start:- Controller Read -" );
		model.addAttribute("read",service.getRead(num));
		log.info("end:- Controller Read -" );
	}
	
	@GetMapping("/getDelete")
	public String boardDelete(@RequestParam("post_num") long num,@RequestParam("category_id")long category) {
		log.info("start:- Controller del -" );
		service.getDelete(num);
		log.info("end:- Controller del -" );
		return "redirect:/board/getList?category_id="+category;
	}
	
	@PostMapping("/modify")
	public void modify(@RequestParam("post_num") long num,PostDto postdto) {
		log.info("start:- Controller modify -" );
		service.modify(postdto);
		log.info("end:- Controller modify -" );
	}
	
	
	
	
	
}
