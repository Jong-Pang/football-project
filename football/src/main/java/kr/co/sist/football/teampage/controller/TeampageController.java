package kr.co.sist.football.teampage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.sist.football.teampage.model.dto.Teampage;
import kr.co.sist.football.teampage.model.dto.TeampageDTO;

import kr.co.sist.football.teampage.model.service.TeampageService;

@Controller
@RequestMapping("/teampage")
public class TeampageController {

	@Autowired
	public TeampageService teampageService;
	
	
	@GetMapping
	public String teampage(@RequestParam(name = "teamId", required = false, defaultValue = "-1") int teamId,
			Model model) {
		if (teamId == -1) {
			return "redirect:/teampage/jointeam";
		}

		Teampage teampage = teampageService.getTeampage(teamId);
	
		model.addAttribute("teampage", teampage);
	
		return "team/teampage";
	}

	@GetMapping("/jointeam")
	public String jointeam() {
		return "team/jointeam";
	}

	@PostMapping
	public ModelAndView teampagePro(TeampageDTO teampageDTO) {

		ModelAndView mv = new ModelAndView();
		mv.addObject("id", 0);

		mv.setViewName("team/teampagePro");

		return mv;
	}
	@GetMapping("/player")
	public String teamPlayer() {
		
		
		return "team/teamplayer";
	}
	//팀 탈퇴
	@GetMapping("/delete")
	public String teamDelete(@RequestParam int teamId, Model model) {
	
		
		return "team/deletepage";
	}
	
	
	
}
