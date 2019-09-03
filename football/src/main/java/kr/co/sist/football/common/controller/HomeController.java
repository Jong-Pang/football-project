package kr.co.sist.football.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	@GetMapping(value="")
	public String getMainpage() {
		
		return "index";
	}
}
