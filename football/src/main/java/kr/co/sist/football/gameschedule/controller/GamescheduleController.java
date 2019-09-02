package kr.co.sist.football.gameschedule.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.football.gameschedule.model.service.GamescheduleService;

@Controller
@RequestMapping("/gameschedule")
public class GamescheduleController {

	private GamescheduleService gamescheduleService;

	@Autowired
	public GamescheduleController(GamescheduleService gamescheduleService) {
		this.gamescheduleService = gamescheduleService;
	}

	@GetMapping
	public String gameschedule(@RequestParam(value = "kind", required = false, defaultValue = "0") int kind,
			@RequestParam(value = "month", required = false, defaultValue = "0") int month, Model model) {
		// kind가 0이면 인원 무관으로?
		model.addAttribute("gameInfoByMonth", gamescheduleService.getGameInfo(month, kind));

		return "game/gameschedule";
	}

}
