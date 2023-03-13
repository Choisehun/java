package com.my.ch.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.my.ch.dto.MemberDto;
import com.my.ch.dto.PostDto;
import com.my.ch.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

import javax.servlet.http.HttpSession;

@Log4j
@RequestMapping("/member/*")
@AllArgsConstructor	//필드 값을 매개 변수로 하는 생성자를 스프링이 알아서 만들어 줌. 그리고 그런 형태의 생성자를 추가하면 스프링이 알아서 객체관리 해줌(@Auto.. 처럼)
@Controller
public class MemberController {
	
	private BoardService service;
	
	@GetMapping("/joinpage")
	public void movejoin() {
		log.info("move : controoler joinpage");
	}
	
	@PostMapping("/join")
	public String addjoin(MemberDto memberdto) {
		log.info("start : controller addjoin");
		service.join(memberdto);
		log.info("end : controller addjoin");
		return "redirect: ../index";
	}

	@GetMapping("/loginpage")
	public void movelogin() {
		log.info("move : controoler loginpage");
	}

	@GetMapping("/login")
	@ResponseBody
	public String login(@RequestParam("user_id") String userid, HttpSession session) {
		log.info(service.login(userid));
		int count = service.login(userid);


		if(count==1) {
			session.setAttribute("userid",userid);
			String script = "<script>window.opener.location.reload(); window.close();</script>";
			return script;
		}else {
			String message = "id check.";
			String script = "<script>alert('" + message + "'); history.back();</script>";
			return script;
		}


	}

	@PostMapping("/logout")
	public String logout(HttpSession session) {
		log.info("logout");
		session.invalidate();
		return "redirect: ../";


	}







}
