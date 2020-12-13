package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.web.domain.Board;
@Controller
public class IndexController {
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String root() {
		return "index/index";
	}
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String index() {
		return "index/index";
	}
	
	/*@Autowired BoardService boardService;
	@RequestMapping(value="/customer", method=RequestMethod.GET)
	public String customer() {
		return "customer/customer";
	}

	@RequestMapping(value="/customer/board/json", method=RequestMethod.POST)
	public String addBoard (
			@RequestParam(value="name") String name,
			@RequestParam(value="password") String password,
			@RequestParam(value="title") String title,
			@RequestParam(value="content") String content) {
		boardService.addBoard(new Board(0, name, password, title, content, null, "S"));
		return "redirect:/customer";
	}

	@RequestMapping(value = "/customer/board/json", method=RequestMethod.GET)
	@ResponseBody
	public String getPurchaseAll () {
		return new Gson().toJson(boardService.getBoard());
	}
	@RequestMapping(value = "/customer/board/update/json", method=RequestMethod.GET)
	@ResponseBody
	public String updateStatus (
			@RequestParam(value="status") String password) {
		return new Gson().toJson(boardService.updateStatus(password));
	}
	@RequestMapping(value = "/customer/board/delete/json", method=RequestMethod.GET)
	@ResponseBody
	public String deleteStatus (
			@RequestParam(value="status") String password,
			@RequestParam(value="id") int id) {
		return new Gson().toJson(boardService.deleteStatus(password, id));
	}*/
}
