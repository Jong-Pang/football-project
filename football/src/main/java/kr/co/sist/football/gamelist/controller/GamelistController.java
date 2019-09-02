package kr.co.sist.football.gamelist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.football.gamelist.model.dto.GameInfoParam;
import kr.co.sist.football.gamelist.model.dto.Gamelist;
import kr.co.sist.football.gamelist.model.service.GamelistService;

@Controller
@RequestMapping("/gamelist")
public class GamelistController {
	private final static int MAX_PAGE_NUM = 5;
	@Autowired
	GamelistService gamelistService;

	@GetMapping
	public String gamelist(@RequestParam(name = "teamId", required = false, defaultValue = "-1") int teamId,
			@RequestParam(name = "pageNum", required = false, defaultValue = "1") int pageNum, Model model) {
		GameInfoParam gameInfoParam = new GameInfoParam();

		gameInfoParam.setStartNum(pageNum);
		gameInfoParam.setEndNum(pageNum + MAX_PAGE_NUM - 1);

		Gamelist gamelist = gamelistService.getGamelist(teamId, gameInfoParam);

		model.addAttribute("gamelist", gamelist);

		return "game/gamelist";
	}
}
