package com.urms.log.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.urms.log.service.LogService;
import com.urms.log.vo.LogVo;

@Controller
public class LogController {
	
	@Autowired
	private  LogService   logService;
	
	@RequestMapping("/login")
	public String login() {
		return "log/login";
	}
	
	@GetMapping("/userMod")
	public String join() {
		return "log/userMod";
	}
	
	@PostMapping("/userMod")
    public String joinProcess(HttpSession     session,
    		@RequestParam   HashMap<String, Object> map) {
		String id = (String)session.getAttribute("id");
		map.put("userId", id);
        logService.updateLog(map);
        return "redirect:/login";

    }
    	
	@RequestMapping("/loginProcess")
	public  String   loginProcess(
		HttpSession     session,
		@RequestParam   HashMap<String, Object> map) {
		
		String returnURL = "";
		if( session.getAttribute("login") != null ) {
			session.removeAttribute("login"); 
		}
		
		LogVo vo = logService.login(map);
		if ( vo != null) {
			session.setAttribute("login", vo);
			session.setAttribute("id", vo.getUser_Id());
		if ( vo.getMod_Dttm() == null || vo.getMod_Dttm().equals("")) {
			returnURL = "log/userMod";
			 }
		  else {
			  returnURL = "redirect:/";       // 로그인 성공시
			}
		
		} else {
			returnURL = "redirect:/login";	 // 로그인 실패시
		}
		return returnURL;	
	}	
	
	@RequestMapping("/logout") 
	public  String  logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";  // 로그아웃시 이동할 주소 -> /login
	}
	//-------------------------------------------
	

}
